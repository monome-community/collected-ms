//-----------------------------------------------------------------------------
// author: Raymond Weitekamp
// name: MonomeClass0.4.ck
// date: 7/24/09
// desc: Class for the Monome.
//       New to 0.4:
//       => Simplified...cut dead code
//       
//Licensed under GPL 2.0
//-----------------------------------------------------------------------------
public class Monome{
    //define monome size (default 64, use monomeSize() for others)
    8 => int xWidth;
    8 => int yHeight;
    
    //prefix: start with /
    "/chuck" => string prefix;
    
    //vars
    int x, y, state;
    //Kill Vars
    int stopListening;
    int killMidi;  //feels good doesn't it?
    
    //events
    Event push;
    
    //led matrix (instantiate as 16 because its easier than re-sizing 2 dimensions)
    int ledMatrix[16][16];
    //push matrix
    int pushMatrix[16][16];
    
    //Osc send/recv
    "localhost" => string host;
    8080 => int hostport;
    8000 => int receiveport;
    OscSend xmit; 
    xmit.setHost(host, hostport);
    OscRecv recv; 
    receiveport => recv.port; 
    recv.listen();
    OscEvent press;
    
    
    //MIDI send
    MidiOut mout;
    MidiMsg msg;
    int midiChannel;
    int midiout; //says which midi device your using.  use "Chuck --probe" in command line to check for valid ports.
    
    //Accelerometer vars----
    OscEvent tilt;
    Event polled;
    //tilt vars
    int muteTilt, muteAdc;//MIDI muting variables for tilter()
    int i;
    float f;
    float tilts[2];
    float raw_adc[2];
    [0.5,0.5] @=> float pos[]; //starting position
    float lastPos[2];
    [0,0] @=> int invert[]; //invert?   1=yes
    0 => int x_adc; //adc index x 
    1 => int y_adc; //adc index y
    .48 => float center;  //center value (calibrate by changing)
    .01 => float thresh;
    .2 => float scaler;
    
    //poll rate - your call.
    .02::second => dur poll_rate;
    
    
    //MIDI send - Can send two kinds of MIDI, each has separate Midi Device.  One sends tilt position, one sends adc data scaled to 127.
    //raw adc midi
    MidiOut mout_adc;
    MidiMsg midimsg_adc;
    int midiChannel_adc;
    0 => int midiout_adc; //says which midi device your using.  use "Chuck --probe" in command line to check for valid ports.
    //if(!mout_adc.open(midiout_adc)) <<< "MIDI device for raw adc not found!" >>>;
    //tilt position midi
    MidiOut mout_tilt;
    MidiMsg midimsg_tilt;
    int midiChannel_tilt;
    1 => int midiout_tilt; //says which midi device your using.  use "Chuck --probe" in command line to check for valid ports.
    //if(!mout_tilt.open(midiout_tilt)) <<< "MIDI device for tilt position not found!" >>>;
    //midi vars
    1 => int MIDIadc_enable;
    1 => int MIDItilt_enable;
    1 => int MIDIadc_channel;//MIDI channel for raw adc data
    2 => int MIDItilt_channel;//MIDI channel for tilt position
    int MIDIadc_cc[2];//cc's for adc
    int MIDItilt_cc[2];//cc's for tilt
    //-----------
    
    //Osc setup and listener:
    recv.event(prefix+"/press",",iii") @=> press;
    spork ~listener(); //@=> Shred listening;
    
    
    
    //-----Startup Light-----
    1 => ledMatrix[0][0];
    update();

    //spork ~testPress();
    //spork ~testPush();
    
    .5::second => now;
    
    0 => ledMatrix[0][0];
    update();   
    
    //----Functions----
    //The reason there is a go function is because I was running into
    //bus errors while attempting to dynamically assign prefices.
    //Must change "prefix" before you go().
    //Spork listener.  Listener always listens.
    fun void go(){
        resetOsc();
    }
    
    fun void resetOsc(){
        <<< "reset with prefix", prefix >>>;
        recv.event(prefix+"/press",",iii") @=> OscEvent mash;
        0 => state;//better to send release than press
        press.signal();
        mash @=> press;
    }
    
    //listener: updates vars, translates the OSC event "press" into the regular event "push".
    //this function should help simplify coding for button presses, but it is important to note
    //that the OSCEvent press can still be used directly (if prefered). also updates the
    //push matrix.
    fun void listener(){
        <<< "i'm listening" >>>;
        0 => stopListening;
        while(true){
            press => now;
            while(press.nextMsg() != 0){
                if (stopListening != 1){
                    press.getInt() => x;	
                    press.getInt() => y;
                    press.getInt() => state;
                    state => pushMatrix[x][y];
                    push.broadcast();
                    //eavesDrop.broadcast();
                    //<<< x,y,state >>>;
                } else {
                    <<< "listener out" >>>;
                    me.exit();
                }
            }
        }
    }
    
    
    

    //---MIDI CODE---
    
    //midiEnable sporks/kills midiNote, assigns channel + device
    fun void midiEnable(int on, int device, int chan){ 
        if(on!=0){
            0 => killMidi;
            //to do: error checking for channel?
            device => midiout;
            chan => midiChannel;
            if(midiChannel<1)<<<"invalid midi channel, must be 1-16">>>;
            //connect to port
            if(!mout.open(midiout))<<<"MIDI is whack! Abort mission">>>;
            spork ~midiNote(); //@=> Shred midiNotes;
            <<< "MIDI ENABLED,device:",midiout,"channel:",midiChannel >>>;
            
        }else {
            //midiNotes.exit();
            1 => killMidi;
            <<< "MIDI DISABLED" >>>;
        }
    }
    
    //simple midiEnable assigns device 0, channel 1
    fun void midiEnable(int on){
        //if(!mout.open(midiout)) me.exit(); 
        if(on!=0){
            0 => killMidi;
            //to do: error checking for channel?
            0 => midiout;
            1 => midiChannel;
            spork ~midiNote(); //@=> Shred midiNotes;
            <<< "MIDI ENABLED,device:",midiout,"channel:",midiChannel >>>;
            
        }else {
            //midiNotes.exit();
            1 => killMidi;
            <<< "MIDI DISABLED" >>>;
        }
    }
    
    //simplest midiEnable assigns device 0, channel 1
    fun void midiEnable(){
            0 => killMidi;
            //to do: error checking for channel?
            0 => midiout;
            1 => midiChannel;
            spork ~midiNote(); //@=> Shred midiNotes;
            <<< "MIDI ENABLED,device:",midiout,"channel:",midiChannel >>>;
    }
    
    //midiDisable == midiEnable(0) == midiEnable(0,0,0)
    fun void midiDisable(){
        midiEnable(0);
    }
    
    //midiNote sends only NoteOn right now 
    fun void midiNote(){
        while(true){
            if (killMidi==0) {
                push => now;
                (x + (y*xWidth)) => int note;//generates unique number for each button
                127 * state => int vel; //127 or 0
                midiSend((143+midiChannel),note,vel);
                //<<< "midiSend:",midiChannel,note,vel>>>;
            } else me.exit();
        }
    }
    
    //midiNote with row function (activates a single row of midi)
    fun void midiNote(int row){
        while(true){
            if (killMidi==0) {
                push => now;
                if(y==row){
                    (x + (y*xWidth)) => int note;//generates unique number for each button
                    127 * state => int vel; //127 or 0
                    midiSend((144+midiChannel),note,vel);
                    //<<< "midiSend:",midiChannel,note,vel>>>;
                }
            } else me.exit();
        }
    }
    
    //midiNote with row range (must be low to high) INCLUSIVE
    fun void midiNote(int rowLow, int rowHigh){
        while(true){
            if (killMidi==0) {
                push => now;
                if((y>=rowLow) && (y<=rowHigh)){
                    (x + (y*xWidth)) => int note;//generates unique number for each button
                    127 * state => int vel; //127 or 0
                    midiSend((144+midiChannel),note,vel);
                    //<<< "midiSend:",midiChannel,note,vel>>>;
                }
            } else me.exit();
        }
    }

    //actually sends midi
    fun void midiSend(int cmdChan, int note, int velocity){
        //cmdChan means 144 + channel (144 means noteOn)
        <<< "midi-send" ,cmdChan, note, velocity >>>;
        cmdChan => msg.data1; 
        note => msg.data2; 		
        velocity => msg.data3; 
        mout.send( msg );
    }
    
    //----
    
    //---ACCELEROMETER CODE---
    fun void accelEnable(){
        xmit.startMsg("/box/adc_enable", "ii");
        0 => xmit.addInt;
        1 => xmit.addInt;
        xmit.startMsg("/box/adc_enable", "ii");
        1 => xmit.addInt;
        1 => xmit.addInt;
        recv.event(prefix+"/adc",",if") @=> tilt;
        if(!mout_adc.open(midiout_adc)) <<< "MIDI device for raw adc not found!" >>>;
        if(!mout_tilt.open(midiout_tilt)) <<< "MIDI device for tilt position not found!" >>>;
        spork ~tilter();
    }
    
    fun void accelDisable(){
        xmit.startMsg("/box/adc_enable", "ii");
        0 => xmit.addInt;
        0 => xmit.addInt;
        xmit.startMsg("/box/adc_enable", "ii");
        1 => xmit.addInt;
        0 => xmit.addInt;
    }
    
    //Tilt Funcs - Much of this is adapted from tehn's tiltmap.ck
    fun void tilter() {
        while (true) {
            while (tilt.nextMsg() != 0) {
                tilt.getInt() => i; //get adc #
                tilt.getFloat() => f;//get raw accel float
                if ((i == x_adc) || (i == y_adc)){//only allow adc's we want 
                    //<<< "ADC:", i, ", raw accel:", f >>>;
                    if (invert[i]==1) {(1-f) => f;} //invert float if necessary
                    f => raw_adc[i]; //save for later
                    (f-center) * scaler => tilts[i];//subtract from center and scale
                    //<<< tilts[0],tilts[1] >>>;
                    if(tilts[i]<thresh && tilts[i]>(-thresh)) 0=>tilts[i]; //if it doesn't meet threshold, make 0
                }
            }
            //store pos in lastPos
            pos[0] => lastPos[0];
            pos[1] => lastPos[1];
            
            //add the tilt to the current position
            tilts[0] + pos[0] => pos[0];
            tilts[1] + pos[1] => pos[1];
            //position can't be greater than 1 or less than 0
            if (pos[0] > 1.0) 1.0 => pos[0];
            if (pos[1] > 1.0) 1.0 => pos[1];
            if (pos[0] < 0.0) 0.0 => pos[0];
            if (pos[1] < 0.0) 0.0 => pos[1];
            //print scaled tilts:
            //<<< tilts[0], tilts[1] >>>;
            //print the current position
            //<<< "x:", pos[0], "y:", pos[1] >>>;
            
            
            if (muteAdc==0){
                //send raw adc float as MIDI
                for (int k;k<pos.size();k++){
                    if (MIDIadc_enable==1 && (pos[k]!=lastPos[k])) {//send if enabled and non-redundant
                        raw_adc[k] => float accel;
                        MIDIadc_cc[k] => int cc;
                        //<<< MIDIadc_channel, cc, accel >>>;
                        MIDIadc(MIDIadc_channel, cc, accel);
                    }
                }
            }
            
            
            if (muteTilt==0){                
                //send positions on tiltmap as MIDI
                for (int j;j<pos.size();j++){
                    if (MIDItilt_enable==1 && (pos[j]!=lastPos[j])) {//send if enabled and non-redundant
                        pos[j] => float position;
                        MIDItilt_cc[j] => int cc;
                        //<<< MIDItilt_channel, cc, position >>>;
                        MIDItilt(MIDItilt_channel, cc, position);
                    }
                }
            }
            
            //broadcast our poll event (use to sync with other shreds)
            polled.broadcast();
            
            //poll
            poll_rate => now;
        }
    }
    
    
    
    
    //MIDI funcs
    fun void MIDIadc(int channel, int cc, float data){
        
        //--- ADAPTED CODE FROM KASSEN http://electro-music.com/forum/post-103112.html----
        //we want to translate this to a midi CC
        //176 refers to a CC on the first channel
        
        if(channel!=0){(175+channel) => midimsg_adc.data1;}else<<<"MIDI Channel must be 1-16">>>;
        
        cc => midimsg_adc.data2;
        
        
        //now we scale it for MIDI.
        //clearly this could be written more compact
        //but I wanted to be clear
        //this refers to the number send to the CC
        
        //we also turn that float into a int since MIDI only works with int
        //this loses some data in rounding
        //but thats midi for you
        
        (data * 127) $ int => midimsg_adc.data3 => int check;
        
        //print?
        //<<< midimsg_adc.data1, midimsg_adc.data2, midimsg_adc.data3 >>>;
        
        //Phew! constructed another one, lets send it!
        mout_adc.send( midimsg_adc);
        //--------------------------------------------------------------------------------
    }
    
    fun void MIDItilt(int channel, int cc, float data){
        
        //--- ADAPTED CODE FROM KASSEN http://electro-music.com/forum/post-103112.html----
        //we want to translate this to a midi CC
        //176 refers to a CC on the first channel
        
        if(channel!=0){(175+channel) => midimsg_tilt.data1;}else<<<"MIDI Channel must be 1-16">>>;
        
        cc => midimsg_tilt.data2;
        
        
        //now we scale it for MIDI.
        //clearly this could be written more compact
        //but I wanted to be clear
        //this refers to the number send to the CC
        
        //we also turn that float into a int since MIDI only works with int
        //this loses some data in rounding
        //but thats midi for you
        
        (data * 127) $ int => midimsg_tilt.data3 => int check;
        
        //print?
        //<<< midimsg_tilt.data1, midimsg_tilt.data2, midimsg_tilt.data3 >>>;
        
        //Phew! constructed another one, lets send it!
        mout_tilt.send( midimsg_tilt);
        //--------------------------------------------------------------------------------
    }
    
    //this function assumes that your x and y axes are calibrated to each other
    //I previously wrote separate calibrations for x and y, but the arrays were screwing things up
    //TO-DO: for 3d accels, it will be necesarry to calibrate each axis with a separate center value.
    fun void calibrate(){
        if (tilt.nextMsg() != 0) {
            tilt.getInt() => i; //get adc #
            tilt.getFloat() => f; //get float
            if ((i == x_adc) || (i == y_adc)){//only allow adc's we want
                f => center; //sets current value as "center", 
            }
        }
    }
    //-------------------
    
    
    //---UTILITY FUNCS---
    //initialize standard sizes: 64, 128h, 128v, 256
    //must declare BEFORE go()
    fun void monomeSize(string s){
        if (s == "64") {
            8 => xWidth => yHeight;
        }
        if (s == "128h") {
            16 => xWidth;
            8 => yHeight;
        }
        if (s == "128v") {
            8 => xWidth;
            16 => yHeight;
        }
        if (s == "256") {
            16 => xWidth => yHeight;
        }
        
        <<< "Monome","xWidth:",xWidth,"yHeight:",yHeight,"prefix:",prefix >>>;
        
    }

    
    //press test function
    fun void testPress() {
        <<< "testPress" >>>;
        while (true){
            press => now;
            while(press.nextMsg() != 0){
                press.getInt() => x;	
                press.getInt() => y;
                press.getInt() => state;
                <<< "x:",x,"y:",y,"s:",state>>>;
            }
        }
    }
    
    //push test function (tests listener) 
    fun void testPush() {
        <<< "testPush" >>>;
        while (true){
            push => now;
            <<< "x:",x,"y:",y,"s:",state>>>;
            x => int x1;
            y => int y1;
            state => int state1;
            //state1 => ledMatrix[x][y];
            //update();
            spork ~led_set(x1,y1,state1);
            me.yield();
        }
    }

    //update all leds
    fun void update() {
        for (int i;i < xWidth; i++){     
            for (int j; j < yHeight; j++) {
                spork ~led_set(i,j,ledMatrix[i][j]);
            }
        }
    }
        
    fun void led_set(int x,int y,int s)
    {
        xmit.startMsg(prefix+"/led", "iii");
        x => xmit.addInt;
        y => xmit.addInt;
        s => xmit.addInt;
    }
    
    fun void clearRow(int row)
    {
        xmit.startMsg(prefix+"/led_row", "iii");
        row => xmit.addInt;
        0 => xmit.addInt;
        0 => xmit.addInt;
    }
}


//ToDo:
//Dynamic OSC.
//Eavesdrop led and press

    
    