# monomer

A Ruby library (and sample apps) for interacting with the monome using the Ruby programming language and osc

Created by: Sam Aaron, with contributions from Ullrich Schäfer

It is most definitely work in progress, is evolving rapidly, but is already great fun to play with :-)

## Download

http://github.com/samaaron/monomer/tree/master

The library is stored in a publicly available git repository. This allows for excellent collaboration and development; feel free to clone your own version and send me pull requests so I can merge your changes to the master branch.

If all this git stuff sounds too much like hard work, you can always fetch the latest tarball from this link: http://github.com/samaaron/monomer/tarball/master

## Installation

*install JRuby version 1.1.2 or greater and make sure jruby is in your PATH (http://jruby.codehaus.org/),
* launch monomeserial, 
* download monomer (the tarball would do just fine),
* copy the mmj .jar and .jnilib files found in lib/java/ to /Library/Java/Extensions,
* launch audio midi setup (found in /Applications/Utilities),
* double-click on the IAC driver icon,
* click on the little plus button to add a new port,
* rename the two ports to in and out,
* click the 'device is online' toggle at the top,
* using the terminal navigate to the apps directory inside monomer,
* decide which app to launch,
* launch it with ./app_name.rb e.g:
* ./blinken_lights.rb
* make sure you have something set up to receive the midi (garage band will do),
* enjoy!


## Instructions

In order to use this library, you must have monomeserial running. The address pattern prefix will be automatically set 
to /monomer, and the cable orientation will be automatically set to up. Simply navigate to the apps folder in a terminal and run one of the scripts like you would normally run a shell script:

<code>./blinker.rb</code>

Or to force a particular interpreter:

<code>ruby blinker.rb</code>



## Caveats

This library has been developed and tested using a monome 128 and on OS X Leopard. If you have any issues with the 40h, 64 and 256 monomes, please contact me and I'll help as soon as I can. Monomer requires the JRuby interpreter. It's much faster (with cool stuff like JIT support) and has a decent thread implementation. Make sure you're using v1.1.2+ If things aren't working on Windows and you know how to fix them, I'll be happy to receive pull requests. Also cable orientation other than up isn't available yet, although it is planned.

