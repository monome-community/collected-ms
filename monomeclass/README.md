# A Chuck Class Object for the Monome

This object encapsulates most of the core functions for communicating between your monome and Chuck.

Created by: Raymond Weitekamp

http://vimeo.com/3426555

* http://www.princeton.edu/~rweiteka/Worbler.ck
* http://www.princeton.edu/~rweiteka/mlresque0.1.zip

## Example Code

### Test

<code>
Monome m;
m.monomeSize("64");
"/test" => m.prefix;
m.go(); //resets the prefix

spork ~m.testPush();

while (true){
  1::second => now;
}
</code>

### MidiPush128

<code>
//-----------------------------------------------------------------------------
// author: Raymond Weitekamp
// name: midiPush128.ck
// date: 8/10/08
// desc: Each button sends a unique midi noteOn when pressed and released.
//-----------------------------------------------------------------------------
Monome m;

"/midipush" => m.prefix;
m.resetOsc();//same as m.go() now.

m.monomeSize("128h");

m.midiEnable(1, 0, 0); //midiEnable(on?, device?, channel?)
//use "Chuck --probe" in terminal to see available midi devices

spork ~m.testPush();//lights up when pressed

while (true) {1::second => now;}//do stuff
</code>

### Tilt

<code>
//Setup
Monome m;
m.monomeSize("64");
"/tilt" => m.prefix;
m.go();
m.clear();
//--

//variables
float xPos, yPos;
int xGrid, yGrid;

//enable accelerometer
m.accelEnable();

//invert my accel values for both axes...
[1,1] @=> m.invert;

while (true){
    //wait for the accelometer "polled" event
    m.polled => now;
    
    //extract the tiltmap position
    m.pos[0] => xPos;
    m.pos[1] => yPos;
    
    //print
    <<< xPos, yPos >>>;
    
    //translate to our monome size
    (xPos * (m.xWidth-1)) $ int => xGrid;
    (yPos * (m.yHeight-1)) $ int => yGrid;
    
    //print
    <<< xGrid, yGrid >>>;
    
    //clear the leds
    m.clear();
    
    //light up our position on the tiltmap
    spork ~m.ledSet(xGrid, yGrid, 1);
    
}
</code>