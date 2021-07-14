export ZSH="/home/andre/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


alias vim="nvim"

alias gdf="git diff"
alias gconf_email="git config user.email $1"
alias gconf_name="git config user.name $1"

alias gau="$HOME/go/bin/gau"

alias rails_apps="cd ~/rails_apps"
alias react_apps="cd ~/react_apps"
alias node_apps="cd ~/node_apps"

alias worldmap="telnet mapscii.me"
alias shitfox="telnet towel.blinkenlights.nl"

screenfetch
echo $(gconf_email)

# Misc

ipinfo(){
  curl http://ipinfo.io/$1 | jq
}

certnmap(){
  curl https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $1  | nmap -T5 -Pn -sS -i - -$
}

SPACESHIP_CHAR_SYMBOL="🎩  ➜"
SPACESHIP_CHAR_SUFFIX=" "

autoload -U compinit && compinit

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

PATH="/usr/local/opt/libpq/bin:$PATH"
PKG_CONFIG_PATH="/usr/local/opt/libpq/lib/pkgconfig"

export PATH="/usr/local/opt/mysql-client/bin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH="/usr/local/opt/python@3.8/bin:$PATH"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
