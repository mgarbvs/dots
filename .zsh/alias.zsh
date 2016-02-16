
# Sudo alias 
alias svim='sudoedit'
alias pacman='sudo pacman'

# Sudo alias 
alias svim='sudoedit'
alias pacman='sudo pacman'
alias mpvs='bash ~/mpv.sh'
# Network alias
alias somessh='ssh -i /home/michael/.ssh/someecards'
alias somescp='scp -i /home/michael/.ssh/someecards'
function sshsec () { ssh -i ~/.ssh/opsworks.pem ubuntu@"$@" }
function scpsec () { scp -i ~/.ssh/opsworks.pem ubuntu@"$@" }

# Programs
alias installfont='sudo fc-cache -f -v'
alias muttb='mutt -F ~/.mutt/acct/wei001'
alias muttg='mutt -F ~/.mutt/acct/windelicato'
alias muttsuns='mutt -F ~/.mutt/acct/suns'
alias muttecards='mutt -F ~/.mutt/acct/someecards'
alias bool='espresso -o eqntott'
alias alsamixer="alsamixer"
alias equalizer="alsamixer -D equal"
alias mysql="mysql -u root -p"
alias redwm='cd ~/dwm; makepkg -g >> PKGBUILD; makepkg -efi --noconfirm; killall dwm; /home/sunn/scripts/dwm-status;'

# Shortcuts
#alias rm='rm -i'
alias rmi='rm -i'
#alias mv='mv -i'
alias c='xsel -ib'
alias emac='emacs -nw'
alias h='history | tail'
alias hg='history | grep '
alias ch='chmod 755 '
alias ~='urxvtc' #Open new terminals in current working directory
alias ~~='urxvtc && urxvtc'
alias ~~~='urxvtc && urxvtc && urxvtc'
alias ~~~~='urxvtc && urxvtc && urxvtc && urxvtc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ']'='open'
alias ll='ls -alF'
alias la='ls -A'
alias lla='ls -lA'
alias l='ls -CF'
alias vi='vim'
alias f='clear && figlet -f 3d'
alias st='speed-test'
# tar aliases
alias tarzip='unzip'
alias tarx='tar -xvf'
alias targz='tar -zxvf'
alias tarbz2='tar -jxvf'
alias weslp='weechat --dir ~/.forms/.weechat'
#alias mkdir and cd
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
function cdl () { cd "$@" && ls; }

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

set -o noclobber
set -o vi
alias news='snownews'
alias cl='clear'
alias q='exit'
# ncmpcpp
