# 文字コードを指定
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

# バッファをクリアする
alias 0='clear'

# 1つ上のディレクトリに移動する
alias up='cd ..'

# コマンドラインよりquicklookを使う
alias ql='qlmanage -p "$@" >& /dev/null'

function macvim () {
  local mvim="/usr/local/Cellar/macvim-kaoriya/HEAD/MacVim.app/Contents/MacOS/mvim"

  if [[ ${#@} = 0 ]]; then
    $mvim
  else
    $mvim --remote-tab-silent $@
  fi
}

export EDITOR="/usr/local/Cellar/macvim-kaoriya/HEAD/MacVim.app/Contents/MacOS/Vim"
# vi -> MacVim-kaoriya
alias vi=macvim
# vim -> MacVim-kaoriya
alias vim=macvim

# .vimrcを読み込まずにvimを起動する
#alias _vim='env LANG=ja_JP.UTF-8 '$EDITOR'-u NONE -N "$@"'

function _macvim () {
  local mvim="/usr/local/Cellar/macvim-kaoriya/HEAD/MacVim.app/Contents/MacOS/mvim"

  if [[ ${#@} = 0 ]]; then
    $mvim -u NONE -N
  else
    $mvim --remote-tab-silent -u NONE -N $@
  fi
}
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

export PS1='\t \W $ '
export CLICOLOR=1

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

# homebrew-caskのインストール場所の変更
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom" 

# brew api token
if [ -f ~/.brew_api_token ];then
  source ~/.brew_api_token
fi

" Caskで入れたアプリをアップデートするワンライン
alias cask-update='for c in `brew cask list`; do ! brew cask info $c | grep -qF "Not installed" || brew cask install $c; done'
