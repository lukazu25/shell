### Terminal Prompts

default

```
PS1='\[\e[1;31m\]\u\[\e[0m\]@\[\e[1;34m\]\h\[\e[0m\]:\[\e[1;32m\]\w\[\e[0m\] \$ '
```

kali linux style

for user
```
PS1='\[\e[38;5;240m\]╭──(\[\e[38;5;208m\]\u\[\e[38;5;240m\])-\[\e[38;5;45m\][\w]\[\e[0m\]\n\[\e[38;5;240m\]╰─\[\e[38;5;37m\]❯ \[\e[0m\]'
```
for root
```
PS1='\[\e[38;5;240m\]╭──(\[\e[38;5;196m\]\u\[\e[38;5;240m\])-\[\e[38;5;45m\][\w]\[\e[0m\]\n\[\e[38;5;240m\]╰─\[\e[38;5;37m\]❯ \[\e[0m\]'
```

kali linux style 2

for user
```
PS1='\[\033[01;32m\]┌──(\u)\[\e[0m\]-\[\033[01;34m\][\w]\[\e[0m\]\n\[\033[01;32m\]└─╼ \[\e[0m\]'
```
for root
```
PS1='\[\e[38;5;196m\]┌──(\u)\[\e[0m\]-\[\033[01;34m\][\w]\[\e[0m\]\n\[\e[38;5;196m\]└─╼ \[\e[0m\]'
```
starship style 

for user
```
PS1='\[\e[38;5;45m\]\w\[\e[0m\]\n\[\e[38;5;82m\]❯\[\e[0m\] '
```
for root
```
PS1='\[\e[38;5;196m\]\u\[\e[0m\] in \[\e[38;5;45m\]\w\[\e[0m\]\n\[\e[38;5;82m\]❯\[\e[0m\] '
```
### If you want to show asterisks on password

Create the file `/etc/sudoers.d/0pwfeedback` and add this line 

```
Defaults pwfeedback
```
### To disable 

```
Defaults !pwfeedback
```
Or 
```
sudo rm /etc/sudoers.d/0pwfeedback
```
