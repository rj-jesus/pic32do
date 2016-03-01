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


Ricardo Jesus
