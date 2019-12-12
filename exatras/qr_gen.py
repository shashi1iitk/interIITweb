import pyqrcode as qr

a = qr.create("Hello")

a.png("hello.png")
a.svg("hello.svg")