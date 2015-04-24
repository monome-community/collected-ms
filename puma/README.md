# PUMA

![](Puma-logo.png)

created by: weng/Gwen

PUMA (PUredata Monome Abstractions) is a collection of objects/abstractions which goal is to ease and speed up the development of monome applications inside the Puredata environment.

## Overview

Initial list of objects:

  * puma.press.switch: filter press events for further processing.
  * puma.press.repeat: filter press events and detect long presses.
  * puma.press.mono: filter press events and detects single pushes.
  * puma.led.toggle: display simple on/off leds.
  * puma.led.slider: display slider-like series of leds.
  * puma.led.monot: display transitional led (aka running step).
  * puma.led.mono: display a single led on a set.
  * puma.led.blink: display blinking leds.

## Underlying concepts

All the objects define operation areas on the monome and accept at least these four parameters:

  * startx
  * starty
  * width
  * height

BUT there is an exception. There is always one! ;) The slider led object whose arguments scheme is:

  * startx
  * starty
  * direction (from 1 -top to 4 -left, clockwise)
  * lenght

In addition, some objects have extra arguments. More on this in the help file.

For convenience and consistency, even if the objects are mapped across multiple rows, it will output a single number to identify the position. For example if the object is mapped as follow: "start x at 0, width 4, start y at 0, height 2" and you press the second row - second column on the monome, the position ID will be 5 (the topleft most button of the object has the ID 0, no matter what the [start x] and [start y] of this object are).

Similarly, the led objects will accept the ID 0 to operate on the topleft most led of the defined area, and soforth.

## Installation/Usage

Puma is a so called "library" of objects. It means that to use it you should put the extracted archive's contained folder in one of your Puredata paths. I guess Max/msp and Puredata share this "path" concept. If you aren't familiar at all with this here is how to proceed:

### Running Linux (any distro):

Copy the folder inside /usr/lib/pd/extra/ (you will need to be root or super-user to do this).

### Running Mac OS:

Right-click on your Pd-extended app > show packages content. Now browse to Contents > Resources > extra and copy the folder here.

### Running Windows:

Copy the folder inside C:\Program Files\Pd-extended\extra\

(please someone correct this if not accurate, as I don't have a windows box).

### Any OS:

You can alway put the library anywhere else, but it's a good default, since Pd-extended keeps all its externals and libs in the **extra** folder.

Now, in any case, you will need to add a path pointing to this **puma** folder.
To do so, launch Pd, go to "preferences" in the menu > "path". There you can add path to the puma folder, save your preferences and you're set :-)

**Note to the application developers:** You don't need to package puma with your app. That way, people can take advantage of updates or bugfixes without needing to overwrite the old versions inside every app that make usage of the puma lib.

Just make sure people install the library before running your app. It is a dependency for those familiar with the linux packaging systems.

Of course, if you make significant changes to the objects, which your app rely upon, you can alway ship it with your app.

** I strongly encourage people improving the library to commit/notify their changes in the [[http://post.monome.org/comments.php?DiscussionID=8681|puma thread]]. That way we can all benefit from your work. Please share the love ;-) **

## Download

The download archive contains the objects, a help file, which will show you how to use the objects, and a logo which is used by the help file, along with a README file and a COPYRIGHT file.

[[http://gwen.coffy.name/Puredata/Puma/puma-0.1.tar.bz2|puma-0.1.tar.bz2]]
