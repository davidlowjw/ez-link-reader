#Include software license
#References: PN532 datasheet & Application Note
#!/bin/bash
echo "Your EZ-Link's CAN is "
cat << EOF | \
    ../pn53x-tamashell |\
    awk 'NR==5 {print substr($0,39,32)}'

#Associate with the ISO-14443 type B card
#Use InListPassiveTarget command
4A 01 03 00

#Use InDataExchange command - Retrieve id=3
40 01 90 32 03 00 00 00

EOF

