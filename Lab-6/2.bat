hostname
mkdir C:\LAB6\DESKTOP-DDUGPTF
mkdir C:\LAB6\DESKTOP-DDUGPTF\temp

net share temp=C:\LAB6\DESKTOP-DDUGPTF\temp

:here
call C:\LAB6\2-2copy.bat
timeout 60

goto here