#Fast ai
##The explaination of codes from the fast ai
First of all, we should do the preparation before we want to deal with the data. We need get a socket and know the website, go to the website and download somme images
and some software which is necessary to do the next step.

import socket,warnings
try:
    socket.setdefaulttimeout(1)
    socket.socket(socket.AF_INET, socket.SOCK_STREAM).connect(('1.1.1.1', 53))
except socket.error as ex: raise Exception("STOP: No internet. Click '>|' in top right and set 'Internet' switch to on")

For example, like the codes, It is a simple method to check internet connectivity. It attempts to establish a TCP connection with port 53 of the DNS server with IP
address 1.1.1.1 to test whether the internet connection is available.

if we want to download some software or something we can find on the Internet, we can use this to do things like that.

!pip install -Uqq duckduckgo_search

If we want to do something to deal with the images, we can do things like this



