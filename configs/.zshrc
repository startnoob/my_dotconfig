# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8

export LANG=en_US.UTF-8
alias ra="ranger"
alias vim="nvim"
alias conser="ssh -p 1919 server@303jt39424.qicp.vip"
export EDITOR="nvim" 
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
zinit snippet OMZ::lib/clipboard.zsh
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh

zinit ice depth=1
zinit light romkatv/powerlevel10k


#zinit light Aloxaf/fzf-tab
##fzf-tab configuration
#bindkey '^S' toggle-fzf-tab
#zstyle ':fzf-tab:complete:cd:*' extra-opts --preview=$extract'exa -1 --color=always $realpath'
#zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm,cmd -w -w"
#zstyle ':fzf-tab:complete:kill:argument-rest' extra-opts --preview=$extract'ps --pid=$in[(w)1] -o cmd --no-headers -w -w' --preview-window=down:3:wrap
#zstyle ':completion:*:descriptions' format
#FZF_TAB_GROUP_COLORS=(
    #$'\033[94m' $'\033[32m' $'\033[33m' $'\033[35m' $'\033[31m' $'\033[38;5;27m' $'\033[36m' \
    #$'\033[38;5;100m' $'\033[38;5;98m' $'\033[91m' $'\033[38;5;80m' $'\033[92m' \
    #$'\033[38;5;214m' $'\033[38;5;165m' $'\033[38;5;124m' $'\033[38;5;120m'
#)
#zstyle ':fzf-tab:*' group-colors $FZF_TAB_GROUP_COLORS
#zstyle ':fzf-tab:{context}' tag value
#end

zinit ice blockf
zinit light zsh-users/zsh-completions

zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit ice lucid wait='0'
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit ice lucid wait='1'
zinit snippet OMZ::plugins/autojump/autojump.plugin.zsh

zinit ice lucid wait='1'
zinit snippet OMZ::plugins/extract/extract.plugin.zsh

zinit ice lucid wait='3'
zinit snippet OMZ::plugins/thefuck/thefuck.plugin.zsh
zinit snippet https://github.com/lincheney/fzf-tab-completion/blob/master/zsh/fzf-zsh-completion.sh
bindkey '^I' fzf_completion
zstyle ':completion:*' fzf-search-display true
zinit light zsh-users/zsh-syntax-highlighting
export FZF_DEFAULT_COMMAND='rg --files --hidden'
autoload compinit; compinit; zinit cdreplay -q
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
