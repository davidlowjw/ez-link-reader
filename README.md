ez-link-reader
==============

Read data from your ez-link card with libnfc and PN532

## Instructions
1. Copy 'ezlink.sh' into your 'libnfc-1.6.0-rc1/examples/pn53x-tamashell-scripts' folder.
2. 'sh ezlink.sh' to execute the shell script.

## Dependancies

* [Libnfc-1.6.0-rc1][3]
* PN532 NFC controller board. Available at [Adafruit Industries][4], *Currently, out-of-stock.

## Limitations

* It's only tested on UART mode. 

##To Do

* Extract card balance.
* Extract transaction history (Trip, Amount spent, Time etc)


## Thanks To

* [Eric Butler][0] <eric@codebutler.com> for his work on [FareBot][1]


[0]: https://twitter.com/#!/codebutler
[1]: https://github.com/codebutler/farebot
[3]: http://www.libnfc.org/download
[4]: http://www.adafruit.com/products/364