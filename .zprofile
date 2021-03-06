if [[ `uname` == "Linux" ]]; then
    export http_proxy=http://proxy.cse.cuhk.edu.hk:8000
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export all_proxy=$http_proxy
    export socks_proxy=socks.cse.cuhk.edu.hk:1080
    export no_proxy="127.0.0.1,localhost,127.0.0.0/8,127.0.1.1,127.0.1.1*,local.home, 137.189.0.0/16, 192.168.0.0/16, .cse.cuhk.edu.hk"
    export ALTERNATE_EDITOR=""
    export EDITOR="emacsclient -t"                  # $EDITOR should open in terminal
    export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI with non-daemon as alternate
    export PATH=/home/yslin/.gem/ruby/2.4.0/bin:$PATH
    export PATH=/home/yslin/anaconda3/bin:$PATH
fi

if [[ `uname` == "Darwin" ]]; then
    export PATH=/Applications/Skim.app/Contents/SharedSupport/:$PATH
fi

# autostart X at login
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx
fi
