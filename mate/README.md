#  m.a.t.e. 

mlr audio tweaker/editor

![](mate_screenshot.jpg|mate screenshot)

## description
mate takes advantage of max/msp's built-in waveform editor to make editing sound files for mlr more immediate, and hopefully convenient.

it allows for basic sound file trimming, as well as basic monome control, allowing for slice auditioning before saving the sound file for use in mlr.

## instructions

- turn on dac with the toggle (x) switch on the bottom right
- click "replace" to load an aif/wav or "import" to load an mp3 using quicktime conversion
- use the mouse controls to select the desired segment of the sound file
- use keyboard shortcuts and a monome device to audition your segment. if you're using the monome, make sure you set the beats number box to properly match the number of steps you intend for the sample to occupy in mlr.
- use the slider on the left to set the audition volume. this gain or attenuation only affects the audition, not the sound file.
- optionally normalize the buffer (you may want to crop first), or use the dropdown menus to set grid reference and snap-to
- click help to display this page
- when you are done editing/trimming your selection, click the crop button to remove all other data from the buffer.
- click write to save the sound file.


## reference

### keyboard shortcuts

* space: play from selection start point
* s: stop playback
* l: toggle loop on/off
* r: read an aif or wav file (replace)
* m: read an mp3 file (import)
* n: normalize to value indicated in the number box
* c: crop buffer
* cmd+a: select entire buffer
* cmd+z: undo last selection change

### wave editor techniques

* clicking and dragging creates a new selection
* shift+clicking modifies the current selection
* cmd+clicking and moving left/right moves the viewer, moving up/down zooms in/out
* ctrl+clicking moves the selection without changing its length

### monome functionality

* top row is a control row like mlr. currently only the top left button is implemented and functions like pressing the 's' key to stop playback
* second row functions as an unquantized mlr playback row and depends on the number of beats.
* all other buttons do nothing.