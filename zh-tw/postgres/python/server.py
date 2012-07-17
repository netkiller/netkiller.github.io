#!/usr/bin/python
# Echo server program

import sys
import socket

HOST = ''                 # Symbolic name meaning the local host
PORT = 5000              # Arbitrary non-privileged port
if len(sys.argv[1])>4:
    PORT = int(sys.argv[1])
    print PORT
MAX_CLIENTS = 50
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(MAX_CLIENTS)
conn, addr = s.accept()

mailfrom = ""
mailto = ""
text = ""

print 'Connected by', addr

conn.send("220 Welcome to My Server ESMTP =>Database  Netkiller\r\n")
#if not data: break
while 1:
    data = conn.recv(1024)
    if data[:4] != "HELO":
        conn.send("502 Error: command not implemented\r\n")
    else:
        conn.send("250 OK\r\n")
        break
#        data = conn.recv(1024)
#        if data != "AUTH LOGIN CRAM-MD5 PLAIN\r\n": 
#            continue
#        else:
#           conn.send("Auth\r\n")
#           data = conn.recv(1024)
#           conn.send(data)
#           data = conn.recv(1024)
#           conn.send(data)

data = conn.recv(1024)
if data[0:10] == "MAIL FROM:":
    mailfrom = data[10:-2]
    conn.send("250 OK\r\n")

data = conn.recv(1024)
if data[:8] == "RCPT TO:":
    mailto = data[8:-2]
    conn.send("250 OK\r\n")

data = conn.recv(1024)
if data == "DATA\r\n":
    conn.send("354 Start mail input; end with <CRLF>.<CRLF>\r\n")
#        while 1 :
#    data = conn.recv(1024)   
while 1:
    data = conn.recv(1024)
    text += data
    if data[-3:] == ".\r\n":
        conn.send("250 OK\r\n")
        break
            
data = conn.recv(1024)
if data == "QUIT\r\n": 
    conn.close()
s.close()

import pg
def mail2pgsql():
    db = pg.DB(dbname='netkiller', host='127.0.0.1', user='netkiller',passwd='chen')
    db.query("insert into oa.away(personnel,note,manager) values('mail2pgsql','"+mailfrom+text+mailto+"','pgsql')")
    for r in db.query("select * from oa.away").dictresult():
        print '%(id)s %(note)s' % r
        
def mail2file(filename):
    f=open(filename,'w');
    f.write(mailfrom)
    f.write(mailto)
    f.write(text)
    f.close()
    
mail2pgsql()
mail2file('socket-file.log')


#HELO
#AUTH LOGIN CRAM-MD5 PLAIN
#chen
#chen
#MAIL FROM:
#RCPT TO:
#DATA

#.
#QUIT

# Echo client program
#import socket

#HOST = 'daring.cwi.nl'    # The remote host
#PORT = 50007              # The same port as used by the server
#s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#s.connect((HOST, PORT))
#s.send('Hello, world')
#data = s.recv(1024)
#s.close()
#print 'Received', `data`


