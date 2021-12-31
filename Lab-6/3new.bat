net stop spooler 
timeout /t 5 
net start 
call C:\LAB6\3compare.bat 
net start spooler 
