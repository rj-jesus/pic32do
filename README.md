# PIC32DO

The process automated is as follows

```
$ pcompile progX.(c|s)
$ sudo ldpic32 -w progX.hex
$ sudo pterm
```

* In case progX requires other files, they are also included

---

## Installation 

Simply copy the file `pic32do` to your `$HOME/bin/` or execute

```
wget https://raw.githubusercontent.com/RJ-Jesus/pic32do/master/pic32do -P $HOME/bin/ && chmod +x $HOME/bin/pic32do
```

## Others

I've also included a fix for the header file `detpic32.h`. As it stands it will throw a few errors in case one cross includes this file:

![detpic32h error](https://github.com/RJ-Jesus/pic32do/raw/master/detpic32h_fix/detpic32h_error.png "detpic32h error")

The small fix I provide intends to mitigate this.  
To apply it simply download and move the file in this repository at `detpic32h_fix/detpic32.h` to your system at `/opt/pic32mx/include/`

Ricardo Jesus
