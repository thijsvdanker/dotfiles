#to profile startup time use zsh/zprof and call "zprof" when the shell is loaded to see results.
# zmodload zsh/zprof

#cat $HOME/.banner | lolcat
#cat $HOME/.tagline

export FOO=zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cobalt2"
HYPTHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
VI_MODE_SET_CURSOR=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:~/.composer/vendor/bin:$PATH

#export PATH="/usr/local/opt/php@8.2/bin:$PATH"
#export PATH="/usr/local/opt/php@8.2/sbin:$PATH"

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

export COMPOSER_MEMORY_LIMIT=-1

export XDEBUG_CONFIG="idekey=VSCODE"

export EDITOR=vim
export GIT_EDITOR=vim
# export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket # this crashes vim 0.11

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
    web-search
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

export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

if [[ -n "$NVIM" ]]; then
else
    ~/.dotfiles/scripts/login.sh
fi
if [[ "$PWD" == "$HOME" ]]; then
    # ~/.dotfiles/scripts/login.sh
fi
#

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Haven
autoload -U bashcompinit && bashcompinit
alias haven="/Users/thijs/Workspace/adsysco/haven/haven"
alias hvn="/Users/thijs/Workspace/adsysco/haven/haven"
. "/Users/thijs/Workspace/adsysco/haven/completion"
complete -F _haven_completions haven
complete -F _haven_completions hvn


# Herd injected PHP binary.
# export PATH="/Users/thijs/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/thijs/Library/Application Support/Herd/config/php/82/"

export NVM_DIR="$HOME/.nvm"

# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/thijs/Library/Application Support/Herd/config/php/81/"

# Add python (used for cheat.sh)
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# ----- Bat (better cat) -----
export BAT_THEME=TwoDark

# ---- Eza (better ls) -----
# alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"

source ~/.dotfiles/zsh/fzf-git.sh

vv() {
  # Assumes all configs exist in directories named ~/.config/nvim-*
  local config=$(fd --max-depth 1 --glob 'nvim-*' ~/.config | fzf --prompt="Neovim Configs > " --height=~50% --layout=reverse --border --exit-0)
 
  # If I exit fzf without selecting a config, don't open Neovim
  [[ -z $config ]] && echo "No config selected" && return
 
  # Open Neovim with the selected config
  NVIM_APPNAME=$(basename $config) nvim $@
}


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/thijs/Library/Application Support/Herd/config/php/83/"

export PATH="/usr/local/opt/php@8.3/bin:$PATH"
export PATH="/usr/local/opt/php@8.3/sbin:$PATH"


# Herd injected PHP binary.
export PATH="/Users/thijs/Library/Application Support/Herd/bin/":$PATH

export OPENAI_API_BASE="https://api.githubcopilot.com"
export OLLAMA_API_BASE=http://127.0.0.1:11434

# Load secrets from ~/.secrets (API keys, tokens, etc.)
[[ -f ~/.secrets ]] && source ~/.secrets
