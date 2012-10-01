#Include software license
#References: PN532 datasheet & Application Note
#!/bin/bash
echo "Your EZ-Link's CAN is "
cat << EOF | \
    ../pn53x-tamashell |\
    awk 'NR==5 {print substr($0,39,32)}'

#Associate with the ISO-14443 type B card
4A 01 03 00
#4A = Use InListPassiveTarget command
#01 = Number of cards to initialize
#03 = 106 kbps baud rate
#00 = AFI

#Retrieve data from purseid 3
40 01 90 32 03 00 00 00
#40 = InDataExchange command
#01 = Target no. 1
#90 32 = ISO/IEC 14443-4 command
#03 = Purse id 3
#00 00 00 = p2, lc, unknown parameters. 

EOF

