conf() {
    case $1 in
        xmonad)     vim ~/.xmonad/xmonad.hs ;;
        bspwm)      vim ~/.config/bspwm/bspwmrc ;;
        sxhkd)      vim ~/.config/sxhkd/sxhkdrc ;;
        conky)      vim ~/.xmonad/.conky_dzen ;;
        homepage)   olddir=$(pwd) && cd ~/scripts/homepage.py && vim homepage.py && ./homepage.py; cd $olddir ;;
        menu)       vim ~/scripts/menu ;;
        mpd)        vim ~/.mpd/mpd.conf ;;
        mutt)       vim ~/.mutt/acct/wei001 ;;
        ncmpcpp)    vim ~/.ncmpcpp/config ;;
        pacman)     svim /etc/pacman.conf ;;
        ranger)     vim ~/.config/ranger/rc.conf ;;
        rifle)      vim ~/.config/ranger/rifle.conf ;;
        tmux)       vim ~/.tmux.conf ;;
        vim)        vim ~/.vimrc ;;
        xinit)      vim ~/.xinitrc ;;
        xresources) vim ~/.Xresources && xrdb ~/.Xresources ;;
        zathura)    vim ~/.config/zathura/zathurarc ;;
        theme2)     vim ~/.themes/FlatStudioCustom/gtk-2.0/gtkrc ;;
        theme3)     vim ~/.themes/FlatStudioCustom/gtk-3.0/gtk.css ;;
        gtk2)       vim ~/.gtkrc-2.0 ;;
        i3)         vim ~/.i3/config ;;
        gtk3)       vim ~/.config/gtk-3.0/settings.ini ;;
        tint2)      vim ~/.config/tint2/xmonad.tint2rc ;;
        zsh)        vim ~/.zshrc && source ~/.zshrc ;;
        hosts)      sudoedit /etc/hosts ;;
        vhosts)     sudoedit /etc/httpd/conf/extra/httpd-vhosts.conf ;;
        httpd)      sudoedit /etc/httpd/conf/httpd.conf ;;
        *)          echo "Unknown application: $1" ;;
    esac
}
form() {
    case $1 in
        work)     xrdb ~/.Xresources && killall xflux && source ~/.zshrc  && sudo thermald && source ~/.xinitrc && exec urxvt ;; #TODO make a cron job & shell script
        sleep)    xrdb -load ~/$/logos && source ~/.forms/alias.zsh && killall xflux && xflux -z 85253 && source ~/.zshrc && source ~/.forms/alias.zsh && slp;;
        ono)      xrdb -load ~/$/xresources  && source ~/.forms/onorc ;;
        *)          echo "Unknown application: $1" ;;
    esac
}
function sou(){
xrdb ~/dotfiles/urxvt/.Xdefaults
}
ahoka(){
xrdb ~/$/ahoka
}
ono(){
xrdb ~/$/xresources
}
function test(){
    [[ -t 1 ]] || return
case $TERM in
    *xterm*|*rxvt*|(dt|k|E|a)term)
        preexec () {
            print -Pn "\e]2;$1\a"    # edited; %n@%m omitted, as I know who and where I am
        }
        ;;
esac
}
nono(){
ncmpcpp -c $/ncmpcpp/ono
}
function vac(){
xrdb ~/$/vacuous/vac
}
function erebus(){
xrdb  ~/$/erebus/.Xresources
}
function rm-02(){
xrdb ~/$/rm-02/test
}
function music()
{
            
    mpd ~/.mpd/mpd.conf
    mpc update
    ncmpcpp
}
function weono(){
weechat --dir ~/ono/dotfiles/weechat
}
function logos(){
xrdb ~/$/logos
}

function install-gentoo
{
    while :;
        do
                echo -en "\033[3$((RANDOM%8));4$((RANDOM%8))mInstall Gentoo\033[m"
                    sleep 0.01 # Slowing down the speed to scroll smoother; adjust to your needs.
                    done
}
function ncm(){
    echo "quarter"
    echo "rwb"
    echo "dx"
    echo "simp"
    echo "nono"

}
function gwb(){
xrdb ~/$/gwb/gwb
}
function but(){
xrdb ~/$/but
}
function xr(){
xrdb ~/.Xresources
}
function quarter(){
mpd .mpd/mpd.conf
ncmpcpp -c ~/$/ncmpcpp/quarter
}
function rwb(){
mpd .mpd/mpd.conf
ncmpcpp -c ~/$/ncmpcpp/rwb
}
function dx(){
mpd .mpd/mpd.conf
ncmpcpp -c ~/$/ncmpcpp/dex
}
function simp(){
mpd .mpd/mpd.conf
ncmpcpp -c ~/$/ncmpcpp/simp
}
function ein(){
ssh einchan@104.238.215.7
}
function 4st(){
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
utimer -t 10m
}
function 4()
{   
    clear
     fortune
    sleep 5
    clear
    fortune
     sleep 5
     clear
     fortune
     sleep 5
     clear
    fortune
    sleep 5
    clear
    fortune
    sleep 5
    clear
 }
function weather(){
exec wego
}
function study(){
killall xflux 
echo "STUDY"
sleep 1
mpd
mpc load study
ncmpcpp
}

short() {
  curl -F"shorten=$*" https://0x0.st
}
