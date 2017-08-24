# Bash Shell Scripting

## gift.sh

Allows user to 'gift-wrap' all non-directory files (and, optionally, directory files, too) found on Desktop into _default_ folder. User also able to choose name of folder on the command line. 

```
./gift.sh [name] [-d]

```
### Options
`[name]` allows user to specify name of central folder. If not provided, the central folder will be called _default_.

`[-d]` allows user to bundle folders into central folder. If not provided, only non-directory folders will be included.
