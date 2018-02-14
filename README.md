# fmtr
Messed up the format of your R scripts files on server? Don't worry, **fmtr** 
helps you reformat your R files right in the command line. It is basically a
super thin wrapper around R packages [formatR](https://yihui.name/formatr/)**

## Installation
   - clone this repo to somewhere on your server
   - add the folder to our .bashrc file

## Usage 

```bash
$ fmtr -h
Usage: fmtr [options]

Options:
   -s SOURCE, --source=SOURCE
        source fileile name

   -o OUTPUT, --output=OUTPUT
        output file name

   -h, --help

$ fmtr -s test.r
```

