export TERM="xterm-256color"
# https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config#p9kgt
BASE16_SHELL_SET_BACKGROUND=false
# https://github.com/chriskempson/base16-shell#bashzsh
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config#p9kgt
source $HOME/.p9kgt

# https://github.com/desyncr/auto-ls#customization
auto-ls-exa () {
  exa -a --group-directories-first --classify
}
# https://github.com/desyncr/auto-ls#configuration
AUTO_LS_COMMANDS=(exa)
AUTO_LS_NEWLINE=false
AUTO_LS_CHPWD=false

# https://github.com/zsh-users/antigen/wiki/Quick-start#load-antigen-in-your-current-shell
source $HOME/antigen/antigen.zsh
# https://github.com/zsh-users/antigen/wiki/Commands#antigen-init
antigen init $HOME/.antigenrc

# https://wiki.archlinux.org/index.php/fzf#zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $HOME/.fzf/shell/key-bindings.zsh
source $HOME/.fzf/shell/completion.zsh
# https://github.com/junegunn/fzf#layout
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# https://github.com/junegunn/fzf#respecting-gitignore
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

#aliases
alias ls='exa --group-directories-first --classify'
alias l='exa --group-directories-first --classify'
alias la='exa -a --group-directories-first --classify'
alias ll='exa -l --group-directories-first --classify'
alias lla='exa -al --group-directories-first --classify'
alias lal='exa -al --group-directories-first --classify'
alias lt='exa -T --group-directories-first --classify'
alias lta='exa -aT --group-directories-first --classify'
alias lat='exa -aT --group-directories-first --classify'
