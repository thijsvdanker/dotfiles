#cat $HOME/.banner | lolcat
#cat $HOME/.tagline

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cobalt2"
HYPTHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
VI_MODE_SET_CURSOR=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:~/.composer/vendor/bin:$PATH

# load php 8.1 by default now
export PATH="/usr/local/opt/php@8.1/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/sbin:$PATH"

#export PATH="/usr/local/opt/php@8.2/bin:$PATH"
#export PATH="/usr/local/opt/php@8.2/sbin:$PATH"

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

export COMPOSER_MEMORY_LIMIT=-1

export XDEBUG_CONFIG="idekey=VSCODE"

export EDITOR=vim
export GIT_EDITOR=vim
export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	artisan
	vi-mode
	composer
	cp
	dnf
	docker
	git
	fzf-zsh-plugin
	macos
	git-trim
	tmux
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8 

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias phpunit="vendor/bin/phpunit"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.aliases
#source ~/.bin/tmuxinator.zsh

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"

export PATH="$PATH:/Users/thijs/.bin"
export PATH="$PATH:/Users/thijs/.local/bin"

#if [[ $- == *i* && $0 == '/usr/bin/zsh' ]]; then
    ~/.dotfiles/scripts/login.sh
#fi
#
