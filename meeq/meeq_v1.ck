// =========================================================================================
// Name:        meeq; a monome midi step sequencer
// Version:     v1.0
// Date:        February 3rd 2009
// Author:      Graham Morrison
// Email:       meeq@paldandy.com
// Web:         http://www.paldandy.com
// Licence:     GPLv3; http://www.gnu.org/licenses
//
// Description: A multi-layered, polyphonic, polyrhythmic and dynamic MIDI step sequencer
// Features:    Forward, backward and random play. Allows dynmic adjustment of step sizes,
//              timing, MIDI channels and manual scales, plus both short and sustained notes
// Prefix:      /meeq
//
// Credits:     1. MIDI Note section taken from Bruce Murphy's Basic Midi Wrapper class for
//              Chuck. See http://www.rattus.net/~packrat/audio/ChucK/files/midisender.ck
// =========================================================================================
//
// QUICK SETUP INSTRUCTIONS:
// NOTE: Only works from the command-line version of Chuck and not the miniAudicle GUI.
//       Chuck needs to be installed and in your path.
//
// 1. Find the MIDI device name you want to output notes to by typing:
//      chuck --probe
//
// 2. Copy the device name within the double quotes into following line:
"PLACE DEVICE NAME HERE" => string midioutstring; 
//
// 3. Define the dimensions of your monome. Maxx holds the width, while maxy hold the height
//    eg. for monome 64
//          08 => int maxx;
//          08 => int maxy; 
//        for monome 128
//          16 => int maxx;
//          08 => int maxy;
16 => int maxx;
08 => int maxy;
//
// 4. Set the global tempo for meeq by changing 120 in the following line:
120 => int bpm;
//
// 5. Run MonomeSerial and set the prefix to /meeq
//
// 6. Type 'chuck meeq_v1.ck' on the command-line to run the sequencer.
//
// END OF QUICK SETUP INSTRUCTIONS

/// Button Configuration (x, y)
[maxx-1,0] @=> int key_clear_pattern[];
[maxx-2,0] @=> int key_random[];
[maxx-3,0] @=> int key_forwards[];
[maxx-4,0] @=> int key_backwards[];
[maxx-1,1] @=> int key_step_size[];
[maxx-1,2] @=> int key_time[];
[maxx-1,3] @=> int key_volume[];
[maxx-1,4] @=> int key_transpose[];
[maxx-1,5] @=> int key_scale[];
[maxx-1,6] @=> int key_channel[];

/// Button Configuration for layer switching
[0,0]   @=> int key_layer_0[];
[1,0]   @=> int key_layer_1[];
[2,0]   @=> int key_layer_2[];
[3,0]   @=> int key_layer_3[];

/// A crude hack so that unused layer keys
/// are defined out of range on smaller Monomes
[maxx-12,0]   @=> int key_layer_4[];
[maxx-11,0]   @=> int key_layer_5[];
[maxx-10,0]   @=> int key_layer_6[];
[maxx-9 ,0]   @=> int key_layer_7[];
[maxx-8 ,0]   @=> int key_layer_8[];
[maxx-7, 0]   @=> int key_layer_9[];
[maxx-6, 0]   @=> int key_layer_10[];
[maxx-5, 0]   @=> int key_layer_11[];

/// Scales Object
mScales mscale;

/// MIDI: Search through MIDI devices for one that matches the pre-configured name
MidiOut mout;
MidiMsg msg;

for(0 => int i; true ; i++){ 
   if (!mout.open(i)) me.exit(); 
   if (mout.name() == midioutstring) break; 
} 
<<< "MIDI Output device:", mout.num(), " -> ", mout.name() >>>;

//Osc send/recv for Monome
"localhost" => string host;
8080 => int hostport;
8000 => int receiveport;

OscSend xmit; 
xmit.setHost(host, hostport);

OscRecv recv; 
receiveport => recv.port; 
recv.listen();

"/meeq" => string prefix;

xmit.startMsg(prefix+"/enc_enable", "ii");
0 => xmit.addInt;
1 => xmit.addInt;

recv.event(prefix+"/press", ",iii") @=> OscEvent press;
recv.event(prefix+"/enc", "ii") @=> OscEvent enc;

int rate, position;
12 => int layers;

1 => int short_note; 
2 => int long_note;

0 => int current_matrix;

noteGrid grid[layers];

/// INITIAL MIDI CHANNELS
1 => grid[0].channel;
2 => grid[1].channel;
3 => grid[2].channel;
4 => grid[3].channel;
5 => grid[4].channel;
6 => grid[5].channel;
7 => grid[6].channel;
8 => grid[7].channel;
9 => grid[8].channel;
10 => grid[9].channel;
11 => grid[10].channel;
12 => grid[11].channel;

/// INITIAL LAYER SCALES
1 => grid[0].scale; 
1 => grid[1].scale; 
1 => grid[2].scale; 
1 => grid[3].scale; 
9 => grid[9].scale;     // MIDI Drums

200::ms => dur press_thresh;

int gesture_flag, gesture_x, gesture_y;
int pushMatrix[maxx][maxy];
time timeMatrix[maxx][maxy];

clearDisplay();

bpm/2   => float tick;
minute/tick => dur beat;

spork ~keyPress();
spork ~stepSequence(0);
spork ~stepSequence(1);
spork ~stepSequence(2);
spork ~stepSequence(3);
spork ~stepSequence(4);
spork ~stepSequence(5);
spork ~stepSequence(6);
spork ~stepSequence(7);
spork ~stepSequence(8);
spork ~stepSequence(9);
spork ~stepSequence(10);
spork ~stepSequence(11);

while ( true ) {

1::second => now;

}

fun void stepSequence(int matrix) {

0 => int i;
0 => int step_seq;
dur tick_time;

while (true){

    // BRIEF EXPLANATION:
    // Two variables control playback. step_seq counts out the number of steps
    // in a pattern so that the speed can be set at the correct point when the 
    // playback mode is 'random' or 'reverse'. 'i' follows the plackback head
    // through the matrix note buffer, and depends on the direction of playback

    if (grid[matrix].direction == 1){                   // Playback direction = FORWARDS

        if (i<grid[matrix].steps-1){
            i++;    
        } else {
            0 => i;
        }

        if (step_seq < grid[matrix].steps-1) {
            step_seq++;
        } else {
            beat/grid[matrix].time_sig => tick_time;
            grid[matrix].time_sig => grid[matrix].time_sync;
            0 => step_seq;
        }

    } else if (grid[matrix].direction == 2) {           // Playback direction = RANDOM

        Std.rand2(0,grid[matrix].steps-1)=>i;

        if (step_seq < grid[matrix].steps-1) {
            step_seq++;
        } else {
            beat/grid[matrix].time_sig => tick_time;
            grid[matrix].time_sig => grid[matrix].time_sync;
            0 => step_seq;
        }

    } else if (grid[matrix].direction == 0) {            // Playback direction = REVERSE   
        if (i > 0){
            i--;    
        } else {
            grid[matrix].steps-1 => i;
        }

        if (step_seq > 0) {
            step_seq--;
        } else {
            beat/grid[matrix].time_sig => tick_time;
            grid[matrix].time_sig => grid[matrix].time_sync;
            grid[matrix].steps-1 => step_seq;
        }

    }
    
    // Play the notes for current step
    playStep(matrix, i);
    
    // Flash the LEDs
    if (current_matrix == matrix){
        if (grid[matrix].matrix[i][0])
            ledSet(i, 0, 0);
        else
            ledSet(i, 0, 1);

        //Rate of play
        tick_time => now;

        if (grid[matrix].matrix[i][0])
            ledSet(i, 0, 1);
        else
            ledSet(i, 0, 0);
    } else {
        tick_time => now;
    }

} /// END WHILE TRUE

}

fun void outputMatrix(int matrix) {

<<< grid[matrix].matrix[0][0],grid[matrix].matrix[1][0],grid[matrix].matrix[2][0],grid[matrix].matrix[3][0],grid[matrix].matrix[4][0],grid[matrix].matrix[5][0],grid[matrix].matrix[6][0],grid[matrix].matrix[7][0],grid[matrix].matrix[8][0],grid[matrix].matrix[9][0],grid[matrix].matrix[10][0],grid[matrix].matrix[11][0],grid[matrix].matrix[12][0],grid[matrix].matrix[13][0],grid[matrix].matrix[14][0],grid[matrix].matrix[15][0] >>>;
<<< grid[matrix].matrix[0][1],grid[matrix].matrix[1][1],grid[matrix].matrix[2][1],grid[matrix].matrix[3][1],grid[matrix].matrix[4][1],grid[matrix].matrix[5][1],grid[matrix].matrix[6][1],grid[matrix].matrix[7][1],grid[matrix].matrix[8][1],grid[matrix].matrix[9][1],grid[matrix].matrix[10][1],grid[matrix].matrix[11][1],grid[matrix].matrix[12][1],grid[matrix].matrix[13][1],grid[matrix].matrix[14][1],grid[matrix].matrix[15][1] >>>;
<<< grid[matrix].matrix[0][2],grid[matrix].matrix[1][2],grid[matrix].matrix[2][2],grid[matrix].matrix[3][2],grid[matrix].matrix[4][2],grid[matrix].matrix[5][2],grid[matrix].matrix[6][2],grid[matrix].matrix[7][2],grid[matrix].matrix[8][2],grid[matrix].matrix[9][2],grid[matrix].matrix[10][2],grid[matrix].matrix[11][2],grid[matrix].matrix[12][2],grid[matrix].matrix[13][2],grid[matrix].matrix[14][2],grid[matrix].matrix[15][2] >>>;
<<< grid[matrix].matrix[0][3],grid[matrix].matrix[1][3],grid[matrix].matrix[2][3],grid[matrix].matrix[3][3],grid[matrix].matrix[4][3],grid[matrix].matrix[5][3],grid[matrix].matrix[6][3],grid[matrix].matrix[7][3],grid[matrix].matrix[8][3],grid[matrix].matrix[9][3],grid[matrix].matrix[10][3],grid[matrix].matrix[11][3],grid[matrix].matrix[12][3],grid[matrix].matrix[13][3],grid[matrix].matrix[14][3],grid[matrix].matrix[15][3] >>>;
<<< grid[matrix].matrix[0][4],grid[matrix].matrix[1][4],grid[matrix].matrix[2][4],grid[matrix].matrix[3][4],grid[matrix].matrix[4][4],grid[matrix].matrix[5][4],grid[matrix].matrix[6][4],grid[matrix].matrix[7][4],grid[matrix].matrix[8][4],grid[matrix].matrix[9][4],grid[matrix].matrix[10][4],grid[matrix].matrix[11][4],grid[matrix].matrix[12][4],grid[matrix].matrix[13][4],grid[matrix].matrix[14][4],grid[matrix].matrix[15][4] >>>;
<<< grid[matrix].matrix[0][5],grid[matrix].matrix[1][5],grid[matrix].matrix[2][5],grid[matrix].matrix[3][5],grid[matrix].matrix[4][5],grid[matrix].matrix[5][5],grid[matrix].matrix[6][5],grid[matrix].matrix[7][5],grid[matrix].matrix[8][5],grid[matrix].matrix[9][5],grid[matrix].matrix[10][5],grid[matrix].matrix[11][5],grid[matrix].matrix[12][5],grid[matrix].matrix[13][5],grid[matrix].matrix[14][5],grid[matrix].matrix[15][5] >>>;
<<< grid[matrix].matrix[0][6],grid[matrix].matrix[1][6],grid[matrix].matrix[2][6],grid[matrix].matrix[3][6],grid[matrix].matrix[4][6],grid[matrix].matrix[5][6],grid[matrix].matrix[6][6],grid[matrix].matrix[7][6],grid[matrix].matrix[8][6],grid[matrix].matrix[9][6],grid[matrix].matrix[10][6],grid[matrix].matrix[11][6],grid[matrix].matrix[12][6],grid[matrix].matrix[13][6],grid[matrix].matrix[14][6],grid[matrix].matrix[15][6] >>>;
<<< grid[matrix].matrix[0][7],grid[matrix].matrix[1][7],grid[matrix].matrix[2][7],grid[matrix].matrix[3][7],grid[matrix].matrix[4][7],grid[matrix].matrix[5][7],grid[matrix].matrix[6][7],grid[matrix].matrix[7][7],grid[matrix].matrix[8][7],grid[matrix].matrix[9][7],grid[matrix].matrix[10][7],grid[matrix].matrix[11][7],grid[matrix].matrix[12][7],grid[matrix].matrix[13][7],grid[matrix].matrix[14][7],grid[matrix].matrix[15][7] >>>;

}


fun void keyPress() {
    
  int x, y, state;
  time timeMatrix[maxx][maxy];

  while (true){

    press => now;

    while (press.nextMsg()){

        press.getInt() => x;
        press.getInt() => y;
        press.getInt() => state;

/// GESTURE ROUTINE. Short press lights the LED. Long press starts a gesture.
/// When key is pressed down, flag the key and timestamp.
/// interpretPress function will spork to wait to see if press is longer than simple press.
        if ((x < maxx) && (y < maxy)){  // Quick sanity check for smaller instances
            if (gesture_flag){         
                interpretGesture(x, y); 
            } else if (state) {    
                1 => pushMatrix[x][y];    
                now => timeMatrix[x][y];
                spork ~interpretPress(x, y);
            } else if ((now - timeMatrix[x][y]) < press_thresh){  
                0 => pushMatrix[x][y];
                updateMatrix(current_matrix, x,y,short_note);
            
            }
        }
    }
  }
}

fun void interpretGesture(int x, int y){

    /// CLEAR PATTERN
    if (((y == gesture_y) && (x == gesture_x)) && ((y == key_clear_pattern[1]) && (x == key_clear_pattern[0]))){
        clearDisplay();
        clearPattern(current_matrix);
    
    /// LAYER 0
    } else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_0[1]) && (x == key_layer_0[0])))
        switchLayer(0);

    /// LAYER 1
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_1[1]) && (x == key_layer_1[0])))
        switchLayer(1);

    /// LAYER 2
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_2[1]) && (x == key_layer_2[0])))
        switchLayer(2);

    /// LAYER 3
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_3[1]) && (x == key_layer_3[0])))
        switchLayer(3);

    /// LAYER 4
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_0[1]) && (x == key_layer_4[0])))
        switchLayer(4);

    /// LAYER 5
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_1[1]) && (x == key_layer_5[0])))
        switchLayer(5);

    /// LAYER 6
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_2[1]) && (x == key_layer_6[0])))
        switchLayer(6);

    /// LAYER 7
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_3[1]) && (x == key_layer_7[0])))
        switchLayer(7);

    /// LAYER 8
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_0[1]) && (x == key_layer_8[0])))
        switchLayer(8);

    /// LAYER 9
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_1[1]) && (x == key_layer_9[0])))
        switchLayer(9);

    /// LAYER 10
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_2[1]) && (x == key_layer_10[0])))
        switchLayer(10);

    /// LAYER 11
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_layer_3[1]) && (x == key_layer_11[0])))
        switchLayer(11);

    /// LONG NOTE
    else if ((y == gesture_y) && (x > gesture_x))     // Same row, and a column to the right of the original
        addLongNote(current_matrix, gesture_x, gesture_y, x);
    
    /// RUN BACKWARDS
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_backwards[1]) && (x == key_backwards[0])))
        0 => grid[current_matrix].direction;

    /// RUN FORWARDS
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_forwards[1]) && (x == key_forwards[0])))
        1 => grid[current_matrix].direction;  

    /// RANDOM SEQUENCE
    else if (((y == gesture_y) && (x == gesture_x)) && ((y == key_random[1]) && (x == key_random[0])))
        2 => grid[current_matrix].direction;

    /// ALTER STEP SIZE
    else if (((y == gesture_y) && (x <= gesture_x)) && ((y == key_step_size[1]) && (gesture_x == key_step_size[0])))
        stepResize(current_matrix, x);

    /// ALTER TIME SIGNATURE
    else if (((y == gesture_y) && (x <= gesture_x)) && ((y == key_time[1]) && (gesture_x == key_time[0])))
        layerTime(current_matrix, x);

    /// ALTER LAYER VOLUME
    else if (((y == gesture_y) && (x <= gesture_x)) && ((y == key_volume[1]) && (gesture_x == key_volume[0])))
        layerVolume(current_matrix, x);

    /// ALTER LAYER TRANPOSITION
    else if (((y == gesture_y) && (x <= gesture_x)) && ((y == key_transpose[1]) && (gesture_x == key_transpose[0])))
        layerTranspose(current_matrix, x);

    /// ALTER LAYER SCALE
    else if (((y == gesture_y) && (x <= gesture_x)) && ((y == key_scale[1]) && (gesture_x == key_scale[0])))
        layerScale(current_matrix, x);

    /// ALTER LAYER CHANNEL
    else if (((y == gesture_y) && (x <= gesture_x)) && ((y == key_channel[1]) && (gesture_x == key_channel[0])))
        layerChannel(current_matrix, x);

    0 => gesture_flag;

}

fun void layerVolume(int matrix, int x){
    
    /// ***MONOME TYPE SPECIFIC***
    if (maxx == 16){            // 128 & 256
        [0, 7, 15, 23, 31, 47, 55, 63, 71, 79, 87, 95, 103, 111, 119, 127] @=> int volume_table[];
        volume_table[x] => grid[matrix].volume;
    } else if (maxx == 8){      // 64
        [0, 15, 31, 55, 71, 87, 103, 127] @=> int volume_table[];
        volume_table[x] => grid[matrix].volume;
    }

}

fun void layerTranspose(int matrix, int x){

    /// ***MONOME TYPE SPECIFIC***
    if (maxx == 16){            // 128 & 256
        [-7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 0] @=> int transpose_table[];
        transpose_table[x] => grid[matrix].transpose;
    } else if (maxx == 8){      // 64
        [-7, -5, -3, -1, 0, 2, 4, 6] @=> int transpose_table[];
        transpose_table[x] => grid[matrix].transpose;
    }
}


fun void layerScale(int matrix, int x){

    x => grid[matrix].scale;

}

fun void layerChannel(int matrix, int x){

    x+1 => grid[matrix].channel;

}


fun void stepResize(int matrix, int x){

    x+1 => grid[matrix].steps;

}

fun void layerTime(int matrix, int x){

    [1, 2, 4, 8, 16, 32, 64, 128, 1, 1, 1, 1, 1, 1, 1, 1] @=> int time_sig_table[];

    grid[matrix].time_sig => grid[matrix].time_sync;
    time_sig_table[x] => grid[matrix].time_sig;

}

fun void switchLayer(int matrix){

    matrix => current_matrix;
    drawDisplay();

}

fun void addLongNote(int matrix, int x1, int y1, int x2){

    for (x1=> int i; i<=x2; i++){
        updateMatrix(matrix, i,y1,long_note);

    }

}

fun void interpretPress(int x, int y){

    press_thresh => now;
    if (pushMatrix[x][y]){
        1 => gesture_flag;
        x => gesture_x;
        y => gesture_y;
    }

    0 => pushMatrix[x][y];
}

fun void updateMatrix(int matrix, int x, int y, int notetype){

    if (grid[matrix].matrix[x][y]){
        0 => grid[matrix].matrix[x][y];
	    ledSet(x, y, 0);
    } else {
	    notetype => grid[matrix].matrix[x][y];
	    ledSet(x, y, 1);
    }
}

fun void flashButton(int matrix, int x, int y){

    while (pushMatrix[x][y]){
        if (grid[matrix].matrix[x][y]){
            ledSet(x, y, 0);
            50::ms => now;
            ledSet(x, y, 1);
            50::ms => now;
        } else {
            ledSet(x, y, 1);
            50::ms => now;
            ledSet(x, y, 0);
            50::ms => now;
        }
    }
}



fun void playStep(int matrix, int step) {

    int note_number;

    for ( 0=> int i; i<maxy; i++){
        
        if (grid[matrix].matrix[step][i]==short_note){

            ///Scale and transpose function
            64-i => note_number;
            mscale.table[grid[matrix].scale][note_number] => note_number;
            grid[matrix].transpose * grid[matrix].transpose_step + note_number => note_number;

            spork ~midiNote(grid[matrix].channel, note_number, grid[matrix].volume, 1, grid[matrix].time_sync);
            spork ~toggleLED(matrix, step, i);
        } else if ((grid[matrix].matrix[step][i]==long_note) &&
                   (step == 0)) {
            step => int x;
            while ((grid[matrix].matrix[x][i]==long_note) && (x < maxx-1))
                x++;

            ///Scale and transpose function
            64-i => note_number;
            mscale.table[grid[matrix].scale][note_number] => note_number;
            grid[matrix].transpose * grid[matrix].transpose_step + note_number => note_number;

            spork ~midiNote(grid[matrix].channel, note_number, grid[matrix].volume, x - step, grid[matrix].time_sync);
            spork ~toggleLED(matrix, step, i);
        } else if ((grid[matrix].matrix[step][i]==long_note) &&
                   (grid[matrix].matrix[step-1][i]!=long_note)){
            step => int x;
            while ((grid[matrix].matrix[x][i]==long_note) && (x < maxx-1))
                x++;

            ///Scale and transpose function
            64-i => note_number;
            mscale.table[grid[matrix].scale][note_number] => note_number;
            grid[matrix].transpose * grid[matrix].transpose_step + note_number => note_number;
            
            spork ~midiNote(grid[matrix].channel, note_number, grid[matrix].volume, x - step, grid[matrix].time_sync);
            spork ~toggleLED(matrix,  step, i);

        }
    }
}

fun void toggleLED(int matrix, int x, int y) {

    if (matrix == current_matrix){
       if (grid[matrix].matrix[x][y]==short_note){
            xorLED(x,y);
        } else if ((grid[matrix].matrix[x][y]==long_note) &&
            (x==0)) {
            x => int xx;
            while ((grid[matrix].matrix[xx][y]==long_note)&&
               (xx < maxx-1)) {
                xorLED(xx,y);
                xx++;
            }
        } else if ((grid[matrix].matrix[x][y]==long_note) &&
               (grid[matrix].matrix[x-1][y]!=long_note)) {
            x => int xx;
            while ((grid[matrix].matrix[xx][y]==long_note)&&
               (xx < maxx-1)) {
                xorLED(xx,y);
                xx++;
            }
        }
    /// Highlight notes on other layers
    } else { 
       if (grid[matrix].matrix[x][y]==short_note){
            xorLED(x,y);
        } else if ((grid[matrix].matrix[x][y]==long_note) &&
               (x==0)) {
            x => int xx;
            while ((grid[matrix].matrix[xx][y]==long_note)&&
               (xx < maxx-1)) {
                xorLED(xx,y);
                xx++;
            }
        } else if ((grid[matrix].matrix[x][y]==long_note) &&
               (grid[matrix].matrix[x-1][y]!=long_note)) {
            x => int xx;
            while ((grid[matrix].matrix[xx][y]==long_note)&&
               (xx < maxx-1)) {
                xorLED(xx,y);
                xx++;
            }
        }
    }
}

fun void xorLED(int x, int y){
    
    if (grid[current_matrix].matrix[x][y]){
        ledSet(x, y, 0);
        50::ms => now;
        if (grid[current_matrix].matrix[x][y])  // Stop LED being falsely turned off if
            ledSet(x, y, 1);                    // a button has been pressed during '=> now;'
    } else {
        ledSet(x, y, 1);
        50::ms => now;
        if (!grid[current_matrix].matrix[x][y]) // Stop LED being falsely turned off if
            ledSet(x, y, 0);                    // a button has been pressed during '=> now;'
    }
}

fun void midiNote(int channel, int note, int velocity, int duration, int time_sig){

    float note_length;
    MidiMsg message;
    dur tick_time;

    /// NOTE ON
    0x9 => int command;

    ((command & 0xf) << 4) | ((channel - 1) & 0xf) => message.data1;
    command | channel => command;
    note & 0x7f => message.data2;
    velocity & 0x7f => message.data3;
    mout.send(message);

    (beat/time_sig) * duration => tick_time;
    tick_time => now;

    ///NOTE OFF
    ((0x8 & 0x0f) << 4) | ((channel - 1) & 0xf) => message.data1;
    mout.send(message);
    
}


fun void ledSet(int x,int y,int s){

        xmit.startMsg(prefix+"/led", "iii");
        x => xmit.addInt;
        y => xmit.addInt;
        s => xmit.addInt;
}

fun void clearDisplay(){
    xmit.startMsg(prefix+"/clear", "i");
    0 => xmit.addInt;
     
}

fun void drawDisplay(){

    for (0=> int x; x< maxx; x++)
        for (0=> int y; y< maxy; y++)
            ledSet(x, y, grid[current_matrix].matrix[x][y]);
}

fun void clearPattern(int matrix){

    for (0=> int x; x< maxx; x++)
        for (0=> int y; y< maxy; y++)
            0 => grid[matrix].matrix[x][y];
            
}

public class noteGrid{

    int matrix[maxx][maxy];
    1           => int direction; 
    maxx        => int steps;
    95          => int volume;
    4           => int time_sig;
    time_sig    => int time_sync;       /// This is the previous time_sig value, used by MidiNote
    1           => int channel;
    0           => int scale;
    0           => int transpose;
    12          => int transpose_step;

}

class mScales{
    16  => int maxtables;
    256 => int maxscale;
    int table[maxtables][maxscale];

    // BY DEFAULT, THESE SCALES ONLY WORK ON THE 64 AND 128.
    // BUT IT SHOULD BE EASY TO CUSTOMISE THESE FOR THE 256.
    
    // SCALE DEFINITION: Default for all tables: An ordinary scale
    for (0=> int j; j < maxtables; j++) 
        for (0 => int i; i < maxscale; i++)
            i => table[j][i];
    
    ///SCALE DEFINITION: Slightly Tighter
    68 => table[1][64];
    67 => table[1][63];
    65 => table[1][62];
    63 => table[1][61];
    61 => table[1][60];
    60 => table[1][59];
    58 => table[1][58];
    56 => table[1][57];

    ///SCALE DEFINITION: Slightly Wider
    84 => table[2][64];
    80 => table[2][63];
    76 => table[2][62];
    72 => table[2][61];
    68 => table[2][60];
    64 => table[2][59];
    60 => table[2][58];
    56 => table[2][57];

    ///SCALE DEFINITION: Slightly Wider w/Octave Shift
    84 => table[3][64];
    68 => table[3][63];
    76 => table[3][62];
    60 => table[3][61];
    66 => table[3][60];
    52 => table[3][59];
    62 => table[3][58];
    44 => table[3][57];

    ///SCALE DEFINITION: Drums for channel 10
    64 => table[9][64];
    63 => table[9][63];
    62 => table[9][62];
    48 => table[9][61];
    60 => table[9][60];
    37 => table[9][59];
    36 => table[9][58];
    35 => table[9][57];

}
