'''
                                      
                                      `
                                     ``                    
                                    ````
                                  ````````
                               `````````````
                            `````````````````
                        `````````````````````````
                    ````````````````````````````````
                ``````````````````````````````````````
            `````````````CLIPPY CLIPPY!!  ``````````````        
          ``````````````````` (v.8) ``````````````````````
        ```````````````````````````````````````````` ``````
      ```````` a visual clipboard manager for MONOME ```````
     `````````````````` hand-rolled in XANADU ```````````````
      `````````````````  evanston, illinois ``````````````````
       ````````````````` two thousand eleven`````````````````                            
        ````````````````````````````````````````````````````
           ````````````````````````````````````````````````
             ``````````` by [ http:// ]cosmopol.is ``````
                ``````````````````````````````````````
                 `````````````````````````````````
                    ``````````````````````````
                      ```````````````````
                       ```````````````
                        ````````````
                         `````````
                          ``````
                            ```
                             `
            
            press monome button: 
                if button not yet pressed:
                    apple-C
                    save clipboard to button
                    clear clipboard
                if button already pressed:
                    paste button contents to clipboard
                    apple-V
                    clear clipboard
            
'''





import time, random, threading, os, monome, pyperclip

copy_cmd = """
osascript -e 'tell application "System Events" to keystroke "c" using {command down}' 
"""
paste_cmd = """
osascript -e 'tell application "System Events" to keystroke "v" using {command down}' 
"""

class Key():
    def __init__(self, x, y):
        self.x = x
        self.y = y
        
class Key():
    def __init__(self, x, y, s):
        self.x = x
        self.y = y
        self.s = s
        
class Presser(threading.Thread):

    def __init__(self, monome):
        threading.Thread.__init__(self)
        self.daemon = True
        self.monome = monome
        self.delete = False
        self.on = [ ]
        self.fun_keys = [ Key(7, 0, '') ]
        self.last_key = Key(-1, -1, "")
        
        self.monome.led_all(0)

            
    def run(self):
        self.running = True
        while self.running:
            for k in self.fun_keys:
                if self.delete:
                    random.seed()
                    ss = random.randint(0, 1)
                    self.monome.led_set(k.x, k.y, ss)
                else:
                    self.monome.led_set(k.x, k.y, 1)
                
            for k in self.on:
                if self.delete:
                    random.seed()
                    ss = random.randint(0, 1)
                    self.monome.led_set(k.x, k.y, ss)
                else:
                    self.monome.led_set(k.x, k.y, 1)
                    
            time.sleep(1.0/16)
    
class ClippyClippyApp(monome.Monome):
    def __init__(self, address):
        monome.Monome.__init__(self, address)
        pyperclip.copy('')
        self.presser = Presser(self)
        self.presser.start()
    
    def grid_key(self, x, y, s):
        if s:
            if (y == 0):
                if (x == 6 | x == 7):
                    self.presser.delete = not self.presser.delete
                
            if (self.presser.delete):
                for k in self.presser.on:
                    if (k.x == x):
                        if (k.y == y):
                            self.presser.monome.led_set(k.x, k.y, 0)
                            self.presser.on.remove(k)
                            return True

            else:    
                for k in self.presser.on:
                    if (k.x == x):
                        if (k.y == y):
                            if (self.presser.delete):
                                self.presser.monome.led_set(k.x, k.y, 0)
                                self.presser.on.remove(k)
                                return True
                            else:
                                pyperclip.copy(k.s)
                                os.system(paste_cmd)
                                pyperclip.copy('')
                                return True
                
                os.system(copy_cmd)
                cc = pyperclip.paste()
                if (cc != ''):
                    print 'copied from clipboard!! ' + cc
                    self.presser.on.append(Key(x,y, cc))                
                    pyperclip.copy('')
                    return True
                return False

print('looking for a monome..')
host, port = monome.find_any_monome()
print('monome found!')
m = ClippyClippyApp((host, port))
m.start()
print('monome started! on ' + host + ':' + str(port))

m.led_all(0)
try:
    while True:
        for i in range(8):
            time.sleep(1.0/20)
except KeyboardInterrupt:
    m.led_all(0)
    m.close()