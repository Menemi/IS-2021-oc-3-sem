echo "Choose 1 menu item:"
echo "1. launching the nano editor"
echo "2. launching the vi editor"
echo "3. launching browser links"
echo "4. exit"
item=0
read item
case "$item" in
1)
        /usr/bin/nano
;;
2)
        /usr/bin/vi
;;
3)
        /usr/bin/links
;;
4)
        exit 0
;;
esac