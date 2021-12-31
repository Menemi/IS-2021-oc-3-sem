cd C:\LAB6
net start > startedServices.txt

cd. > 3new.bat
echo net stop spooler >> 3new.bat
echo timeout /t 5 >> 3new.bat
echo net start > updateFile.txt >> 3new.bat
echo call C:\LAB6\3compare.bat >> 3new.bat
echo net start spooler >> 3new.bat

cd. > 3compare.bat
fc C:\LAB6\startedServices.txt C:\LAB6\updateFile.txt /N > afterComp.txt