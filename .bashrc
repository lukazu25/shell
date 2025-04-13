user PS1='\[\e[38;5;208m\]┌─ \[\e[38;5;196m\]\u\[\e[0m\] in \[\e[38;5;45m\]\w\[\e[0m\]$(git_prompt)\n\[\e[38;5;208m\]└─ $ \[\e[0m\]'
root PS1='\[\e[38;5;208m\]┌─ \[\e[38;5;196m\]\u\[\e[0m\] in \[\e[38;5;45m\]\w\[\e[0m\]\n\[\e[38;5;208m\]└─ # \[\e[0m\]' 

git_prompt() {
    # Check if we are inside a git repository
    if git rev-parse --is-inside-work-tree &>/dev/null; then
        # Get the current branch name
        branch=$(git symbolic-ref --short HEAD 2>/dev/null)
        echo " ($branch)"
    fi
}
