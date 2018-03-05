# Import custom functions
source ~/.bash_scripts/*.sh
. /usr/local/etc/profile.d/z.sh

# Aliases
alias py="python3.4"
alias getip="curl ipecho.net/plain; echo"
alias web="cd /Library/WebServer/Documents/"
alias d='cd ..'

alias gitch='git checkout'
alias gitco='git commit -m'
alias gits='git status'
alias gitad='git add -A'
alias gitbr='git branch'

alias notes='code ~/files/pariveda/topgolf/notes'

# Topgolf: Set default AWS region to use AWS SDK locally
# Topgolf: Set default environment to dev
export AWS_REGION=us-east-1;
export CURRENT_ENVIRONMENT=dev;

# TG Cider
export JWT_PUBLIC_KEY="$(cat ~/keys/cider/cider-jwt-key.pub | base64)"
export JWT_PRIVATE_KEY="$(cat ~/keys/cider/cider-jwt-key.kms)"
export COUPONS_TABLE=coupon-service_coupons_dev
export MASTER_CODES_TABLE=coupon-service_master_codes_dev
export ERRORS_TABLE=coupon-service_errors_dev

export lolserv='95.172.65.1'
export C_INCLUDE_PATH="/usr/local/bin"

export PS1="\n(\t)[\w]\n\$ "

# enable regex
shopt -s extglob
shopt -s dotglob

function prac {
  cd ~/Documents/college/Computer\ Science/practice/"$1"
}

function cs {
  cd ~/Documents/class/"$1"/"$2"\ "$3"
}

function gccf {
  stem=${1%.c}
  objs="/usr/local/lib/sockettome.o"
  libs="/usr/local/lib/libfdr.a -lm -lpthread"
  if [ $2 ]
  then
    outname=$2
  else
    outname="a.out"
  fi
  echo "gcc -I/usr/local/include -c $1"
  gcc -I/usr/local/include -c $1

  echo "gcc ${stem}.o $objs $libs -o $outname"
  gcc ${stem}.o $objs $libs -o $outname
}

# Backup a file or directory
function bak {
  if [ $1 ] 
  then
    cp -r $1 ~/backups/${1}.bak
  fi
}

export CLICOLOR=1

# set PATH for personal scripts
export PATH="$PATH:/Users/connorminton/bin"

# set PATH for LaTeX
export PATH=$PATH:/usr/texbin

# add /usr/local/sbin
export PATH="$PATH:/usr/local/sbin"

# add Python bin
export PATH="$PATH:/Users/connorminton/Library/Python/2.7/bin"

##
# Your previous /Users/cminton/.bash_profile file was backed up as /Users/cminton/.bash_profile.macports-saved_2016-01-27_at_19:55:04
##

# MacPorts Installer addition on 2016-01-27_at_19:55:04: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="${PATH}:/Users/cminton/bin"

##
# set PYTHONPATH
##
PYTHONPATH="${PYTHONPATH}:/usr/local/lib/python2.7/site-packages"
export PYTHONPATH
