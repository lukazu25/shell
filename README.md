## Terminal Prompts

Default 

for bash
```
PS1='\[\e[1;31m\]\u\[\e[0m\]@\[\e[1;34m\]\h\[\e[0m\]:\[\e[1;32m\]\w\[\e[0m\] \$ '
```
for zsh

```
PROMPT='%F{red}%n%f@%F{blue}%m%f:%F{green}%~%f %# '
```

Style 1

for bash
```
PS1='\[\e[38;5;240m\]╭──(\[\e[38;5;208m\]\u\[\e[38;5;240m\])-\[\e[38;5;45m\][\w]\[\e[0m\]\n\[\e[38;5;240m\]╰─\[\e[38;5;37m\]❯ \[\e[0m\]'
PS1='\[\e[38;5;240m\]╭──(\[\e[38;5;196m\]\u\[\e[38;5;240m\])-\[\e[38;5;45m\][\w]\[\e[0m\]\n\[\e[38;5;240m\]╰─\[\e[38;5;37m\]❯ \[\e[0m\]'
```
for zsh
```
PROMPT='%F{240}╭──(%F{208}%n%F{240})-%F{45}[%~]%f
%F{240}╰─%F{37}❯ %f'
PROMPT='%F{240}╭──(%F{196}%n%F{240})-%F{45}[%~]%f
%F{240}╰─%F{37}❯ %f'
```

Style 2

for bash
```
PS1='\[\033[01;32m\]┌──(\u)\[\e[0m\]-\[\033[01;34m\][\w]\[\e[0m\]\n\[\033[01;32m\]└─╼ \[\e[0m\]'
PS1='\[\e[38;5;196m\]┌──(\u)\[\e[0m\]-\[\033[01;34m\][\w]\[\e[0m\]\n\[\e[38;5;196m\]└─╼ \[\e[0m\]'
```
for zsh
```
PROMPT='%F{green}┌──(%n)%f-%F{blue}[%~]%f\n%F{green}└─╼ %f'
PROMPT='%F{196}┌──(%n)%f-%F{blue}[%~]%f\n%F{196}└─╼ %f'
```

### If you use starship 

```
sudo cp starship.toml ~/.config
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
