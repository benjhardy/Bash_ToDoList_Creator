# Bash TO-DO-LIST Creator!
To-Do-List Journal. cat the day in the terminal for a minimalist view on your goals for the day.

# $today in .bashrc for easy access to To-Do-List
add:

```bash
export today=$(date +"%F")
```

to .bashrc in your home directory.

This is useful if you dont want to 'cat' the actual date. i.e.

```bash
$ cat 2020-08-3 
```
vs 
```bash
$ cat $today
```
