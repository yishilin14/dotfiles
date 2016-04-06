export PATH="$HOME/anaconda2/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.3.0/bin:$PATH"
export PATH=$HOME/bin:$PATH


if [[ `uname` == "Linux" ]]; then
    export http_proxy=http://proxy.cse.cuhk.edu.hk:8000
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export all_proxy=$http_proxy
    export socks_proxy=socks.cse.cuhk.edu.hk:1080
    export no_proxy="127.0.0.1,localhost,127.0.0.0/8,127.0.1.1,127.0.1.1*,local.home, 137.189.0.0/16, 192.168.0.0/16"
    export EDITOR='vim'
fi
