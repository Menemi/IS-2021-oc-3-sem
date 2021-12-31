::initialization
set drivers=C:\LAB6\drivers.txt
set sorted=C:\LAB6\sorted.txt

::1
driverquery /FO table /SI > %drivers%

::2
sort /R %drivers% /o %sorted%

exit 1