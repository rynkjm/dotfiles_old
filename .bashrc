# バッファをクリアする
alias 0='clear'

# 1つ上のディレクトリに移動する
alias up='cd ..'

# コマンドラインよりquicklookを使う
alias ql='qlmanage -p "$@" >& /dev/null'

# EDITORはMacVim-koriya
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
# vi -> MacVim-kaoriya
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
# vim -> MacVim-kaoriya
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# .vimrcを読み込まずにvimを起動する
alias _vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -u NONE -N "$@"'

# ll -> 'ls -l'
alias ll='ls -lG'

# la -> 'ls -a'
alias la='ls -aG'

# ls -> 'ls -G'
alias ls='ls -G'

# rm -> 'rm -i'
alias rm='rmtrash'
alias cp='cp -iv'
alias mv='mv -iv'

# alias df='df -h'
alias df='df -h'

# geeknote -> 'python geeknote.py'
# alias geeknote='python ~/geeknote/geeknote.py'

export PS1='\t \W $ '


#########################
#   Homebrew
#########################
export HOMEBREW_EDITOR=$EDITOR
export HOMEBREW_MAKE_JOBS=4
export HOMEBREW_CACHE=~/Library/Caches/Homebrew

alias b='brew'
alias bs='brew -S'
alias bi='brew info'
alias bl='brew list'
alias bh='brew home'
alias bopt='brew options'
alias bout='brew outdated'
alias bup='brew update'
alias bupg='brew upgrade'
alias opbr='open $(brew --prefix)/'
alias cdbr='pushd $(brew --prefix)/'
