# oscRedirect

(Please note that while I'm referring to Windows and Linux, this should work with any OS and in any direction. However, I only tested the configuration explained below)

This script allows you to redirect incoming messages to a remote computer.

created by: blen2r (P.E. Viau)

This type of application may already exist but it was an easy fix to a problem I had. Since my desktop runs Linux only, I'm not able to use the Max/Msp patches. Since I want to use my monome with Linux and Windows at the same time, I needed a solution to share OSC messages over my LAN. The solution I found was to use my Windows laptop to run Max/Msp but the LEDs wouldn't light up using ArduinomeSerial.

Using my script, I can take the OSC output of Max and send it to a remote computer. So my arduinome is now connected to my linux pc, using serial-pyo, and communicates with Max via my network.

To set this up you need to:

- On linux machine, run serial-pyo
- Config a new OSC application (Serial-pyo address: <Linux(local) PC's ip> (NOT 127.0.0.1/localhost) port: 8080 / Application address: <Windows PC's ip> port:8000). Don't forget to set a correct prefix.
- Set your device to use this application
- On Windows PC, launch Max/Msp with desired application
- Edit oscRedirect.py (using notepad) to reflect your configuration (remote="<Linux PC's IP>")
- Run oscRedirect.py (python oscRedirect.py)