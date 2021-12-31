cd C:\
md \LAB6
cd \LAB6
ver>Version.txt
wmic diskdrive get>"Diskdrive.txt"
systeminfo | find "Memory">"Memory.txt"
md C:\LAB6\TEST
cd C:\LAB6\TEST
xcopy "C:\LAB6\*.txt" "C:\LAB6\TEST"
copy "C:\LAB6\TEST" "C:\LAB6\TEST\All.txt"
del "C:\LAB6\Memory.txt"
del "C:\LAB6\Diskdrive.txt"
del "C:\LAB6\Version.txt"
doskey /History>"C:\LAB6\TEST\History.txt"