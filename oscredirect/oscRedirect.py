# oscRedirect v1
# written by P.E. Viau
# http://docs.monome.org/doku.php?id=app:oscredirect

from socket import *

#local machine config
local = "127.0.0.1"
port = 8080
localAddress = (local,port)

#remote machine config
remote = "192.168.1.110"
port = 8080
remoteAddress = (remote,port)

#send socket
sendSocket = socket(AF_INET,SOCK_DGRAM)

buffer = 1024

#listen socket config
listenSocket = socket(AF_INET,SOCK_DGRAM)
listenSocket.bind(localAddress)

#main loop
while 1:
	data,addr = listenSocket.recvfrom(buffer)
	if data:
		#print data
		sendSocket.sendto(data,remoteAddress)

listenSocket.close()
sendSocket.close()