# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ygorgsena/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Colorize the ls output and show hidden files
alias ls='ls -la --color=auto'

# Add ZSH plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-sudo/sudo.plugin.zsh
source /usr/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Add .NET Core SDK tools
export PATH="$PATH:/home/ygorgsena/.dotnet/tools"

# Disable .NET Telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Activate mise en place to use the installed backend plugins
eval "$(mise activate zsh)"

# Fix problem of ABNT-2 layout not being recognized by Wayland/Emacs
setxkbmap -model abnt2 -layout br -variant abnt2
export WAYLAND_DISPLAY="wayland-1"