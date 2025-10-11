# Tool directories (so scripts can find them)

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Colors the dirs for zstyles
#eval "$(gdircolors -b)"

# Vi binds
bindkey -v
export KEYTIMEOUT=1

# Load compinit autocompletions
autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files


# Brew autoloadable functions (including completions)
## need this debian equivalent FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"


# +-----------+
# |  Zstyles  |
# +-----------+

zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:descriptions' format '%U%F{magenta}%B→ %d%b%f%u'
zstyle ':completion:*:messages' format '%F{yellow}%d%f'
zstyle ':completion:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:warnings' format '%F{red}✗ No matches%f'
zstyle ':completion:*:*:-command-:*:*' group-order aliases builtins functions commands
# Case-insensitive matching + partial matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*'

# Options
#setopt CORRECT_ALL               # Tries to correct commands, arguments, filenames
setopt LIST_AMBIGUOUS            # Complete as much of a completion until it gets ambiguous
setopt COMPLETE_IN_WORD          # Complete from both ends of a word.
setopt AUTOCD
setopt AUTOPUSHD
setopt PUSHD_IGNORE_DUPS

# History
HISTFILE=~/.zsh_history          # Specify where to save history
HISTSIZE=10000                   # Commands kept in memory
SAVEHIST=10000                   # Commands saved to $HISTFILE across sessions
setopt SHARE_HISTORY
setopt APPEND_HISTORY            # Makes sure history is appended rather than overwriting it.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.


# +-----------+
# |  Sources  |
# +-----------+

# Zsh plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship
eval "$(starship init zsh)"

# Zoxide
# eval "$(zoxide init zsh)"


#EXPORTS

# FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS="--height 90% \
--layout reverse \
--color 'fg:white, fg+:bright-white'"
#
#
#  ╔═════════════════════════════════════════════════════════╗
#  ║  █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗     ║
#  ║ ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝     ║
#  ║ ███████║██║     ██║███████║███████╗█████╗  ███████╗     ║
#  ║ ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║     ║
#  ║ ██║  ██║███████╗██║██║  ██║███████║███████╗███████║     ║
#  ║ ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝     ║
#  ╚═════════════════════════════════════════════════════════╝


alias cp='cp -aiv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rsync='rsync -ah --info=progress2'
alias fzfbat="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' --bind 'enter:execute(nvim {})'"


# FUNCTIONS
# fzf dirs and cd into dir
fcd() { local dir; dir=$(fd --type d --hidden --exclude .git | fzf --exit-0 --select-1) && [[ -n "$dir" ]] && cd "$dir"; }
# fnm
FNM_PATH="/home/max/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# For UV
. "$HOME/.local/bin/env"

# For Cargo
. "$HOME/.cargo/env"
