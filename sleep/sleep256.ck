// patch
Blit s => ADSR e => JCRev r => dac;
.5 => s.gain;
0 => r.mix;

// set adsr
e.set( 0.5::ms, 0.5::ms, .5, 0.5::ms );


OscSend xmit;
xmit.setHost("localhost", 8080);

OscRecv recv;
8000 => recv.port;
recv.listen();

clear_all();

xmit.startMsg("/sleep/enc_enable", "ii");
0 => xmit.addInt;
1 => xmit.addInt;

recv.event("/sleep/press", ",iii") @=> OscEvent oe;
recv.event("/sleep/enc", "ii") @=> OscEvent enc;

int world[16][16][2];
int ratios[2][9];

int x,y,state,count,collect,i,rate,change,ratio,total,grow;

float speed;





1500 => rate;
(0.05*rate/1000.0) => speed;

0 => i;
2 => collect;
0 => ratio;
0 => grow;

while ( true ) 
{
	(i+ 1) % collect => i;
	if (i == 0)
	while ( oe.nextMsg() != 0 )
	{
		oe.getInt() => x;	
		oe.getInt() => y;
		oe.getInt() => state;

		if (state == 1) {
			1 => world[x][y][1];
		}
	}
	while ( enc.nextMsg() != 0 )
	{
		enc.getInt() => i;	
		enc.getInt() => change;

		rate + change => rate;
		if (rate<1000) 1000=>rate;
		//<<< "rate:", rate >>>;
		(0.05*rate/1000.0) => speed;
	}

	//clear_all();

	for(0 => x; x < 16; x++)
  	for(0 => y; y < 16; y++) { 
		if (world[x][y][1] == 1 ) {
    	   	1 => world[x][y][0]; 
        	led_set(x,y,1);

		    Std.mtof( 50 + (y*10) + (x*2) ) => s.freq;
			y => s.harmonics;
		    e.keyOn();
    		1::ms => now;
    		e.keyOff();
        } 
      	if (world[x][y][1] == -1) {
  			0 => world[x][y][0];  
			led_set(x,y,0);      	
		}

		0 => world[x][y][1]; 
	}

	// Birth and death cycle

	if(total<4 && grow==0) {
		0 => ratios[0][0];
		3 => ratios[0][1];
		2 => ratios[0][2];
		2 => ratios[0][3];
		1 => ratios[0][4];
		1 => ratios[0][5];
		1 => ratios[0][6];
		1 => ratios[0][7];
		1 => ratios[0][8];

		0 => ratios[1][0];
		4 => ratios[1][1];
		2 => ratios[1][2];
		1 => ratios[1][3];
		1 => ratios[1][4];
		0 => ratios[1][5];
		0 => ratios[1][6];
		0 => ratios[1][7];
		0 => ratios[1][8];

		1=>grow;
		<<< "grow = 1" >>>;
	}
	else if(total>30 && grow==1) {
		0 => ratios[0][0];
		1 => ratios[0][1];
		1 => ratios[0][2];
		1 => ratios[0][3];
		1 => ratios[0][4];
		1 => ratios[0][5];
		0 => ratios[0][6];
		0 => ratios[0][7];
		0 => ratios[0][8];

		64 => ratios[1][0];
		8 => ratios[1][1];
		6 => ratios[1][2];
		4 => ratios[1][3];
		2 => ratios[1][4];
		1 => ratios[1][5];
		1 => ratios[1][6];
		0 => ratios[1][7];
		0 => ratios[1][8];
		
		0=>grow;
		<<< "grow = 0" >>>;
	}


	0 => total;
	for (0=>x; x < 16; x++) { 
    	for (0=>y; y < 16; y++) { 
      		neighbors(x, y) => count; 
      		
			if(world[x][y][0]==1)
				1 +=> total;

			if(world[x][y][0]==0 && Std.rand2(0,255) < ratios[0][count])
					1 => world[x][y][1];
					
			if(world[x][y][0]==1 && Std.rand2(0,255) < ratios[1][count]) 
					-1 => world[x][y][1];

			

			//if (count == 3 && world[x][y][0] == 0) 
      		//	1 => world[x][y][1]; 
      		//if ((count < 2 || count > 3) && world[x][y][0] == 1) 
     		// 	-1 => world[x][y][1];    
    	} 
  	} 

	
	0.1::second => now;
}

// Add error checking in here somewhere.
fun void led_set(int x,int y,int s)
{
	xmit.startMsg("/sleep/led", "iii");
	x => xmit.addInt;
	y => xmit.addInt;
	s => xmit.addInt;
}

fun void clear_all()
{
	0 => int row;
	while (row < 16) {
		xmit.startMsg("/sleep/led_row", "iii");
		row => xmit.addInt;
		0 => xmit.addInt;
		0 => xmit.addInt;
		1 +=> row;
		0.005::second => now;
	}
}

// Count the number of adjacent cells 'on' 
fun int neighbors(int x, int y) 
{ 
  return world[(x + 1) % 16][y][0] + 
         world[x][(y + 1) % 16][0] + 
         world[(x + 16 - 1) % 16][y][0] + 
         world[x][(y + 16 - 1) % 16][0] + 
         world[(x + 1) % 16][(y + 1) % 16][0] + 
         world[(x + 16 - 1) % 16][(y + 1) % 16][0] + 
         world[(x + 16 - 1) % 16][(y + 16 - 1) % 16][0] + 
         world[(x + 1) % 16][(y + 16 - 1) % 16][0]; 
} 