# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Customize the prompt with username/hostname/working directory(except within home directory)
PS1='\[\033[02;32m\]\u@\H:\[\033[02;34m\]\w\$\[\033[00m\] '

source /usr/share/bash-completion/bash_completion

alias as=ansible
alias asp=ansible-playbook
alias asd=ansible-doc
alias asl=ansible-lint
