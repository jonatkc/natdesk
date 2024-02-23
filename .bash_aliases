
# Commands
alias nat='sudo nala'
alias upall='sudo nala upgrade -y && flatpak upgrade -y'
alias apt='\nala'
alias nala='sudo nala'
alias oldapt='\apt'
alias sudo='sudo '
alias ssha='eval $(ssh-agent) && ssh-add'
alias v='vim'
alias sv='sudo vim'
alias rl='source ~/.bashrc'

# folder alias
alias cd='\z'
alias ..='z ..'
alias z2='z ../..'
alias back='z -'
alias la='ls -A'
alias lt='ls -ltA'
alias ll='ls -l'
alias l='ls'
alias t='tree' 

# storage
alias storage='du -x -h -d1'

# File Handling 
alias cp='cp -i'	#confirm
alias rm='rm -i'	#confirm
alias mv='mv -i'	#confirm

# git
alias gs='git status'
alias ga='git add'
alias gpush='git push'
alias gclone='git clone'

# variables

# zoxide
eval "$(zoxide init bash)"

# Bind Ctrl+F to fzf
source /usr/share/doc/fzf/examples/key-bindings.bash
bind -x '"\C-f": "$(command -v fzf)";'
