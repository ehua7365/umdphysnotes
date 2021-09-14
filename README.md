# umdphysnotes
Unofficial course notes for some physics courses at UMD
- PHYS610 Mathematical methods and their applications in classical mechanicsa
  and electromagnetism
- PHYS612 Quantum and statistical physics
- PHYS733 Topological quantum phases of matter

The following assumes you are on Ubuntu Linux.

# Requirements
You'll need LaTeX installed.
```
sudo apt-get install texlive-full
```

# Compiling files
Say for example you wanted to compile the files for PHYS610.
Then go to the directory where the notes are.
```
cd phys610
```


Use live-update compiling with
```
latexmk -pdf -pvc -interaction=nonstopmode --shell-escape main.tex
```

If you have tmuxinator, vim and zathura installed,
you only just need to run
```
.mux
```
and vim and latexmk logs will show up inside a tmux session with zathura
showing the pdf being live-updated as you type.

# Creating releases
Make a new release in the release folder with
```
make release
```
and the pdfs will be correctly names and be in the release folder.
