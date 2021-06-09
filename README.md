# Bash TO-DO-LIST Creator!
To-Do-List Journal. cat the day in the terminal for a minimalist view on your goals for the day.
# To Run go to your favorite shell...
```bash
./makeToday.sh
```
## hint: add $today in .bashrc for easy access to To-Do-List
add:

```bash
export today=$(date +"%F")
```

to .bashrc in your home directory.

This is useful if you don't want to 'cat' the actual date. i.e.

```bash
$ cat 2020-08-31
```
vs 
```bash
$ cat $today
```
