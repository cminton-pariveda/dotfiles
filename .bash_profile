script_dir="$(cd "$(dirname "{BASH_SOURCE[0]}")" && pwd)"

# Import custom functions
for file in $(ls "$script_dir/bash_scripts"); do
  . "$script_dir/bash_scripts/$file"
done

# z
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

# Set default AWS region to use AWS SDK locally
# Set default environment to dev
export AWS_REGION=us-east-1;
export CURRENT_ENVIRONMENT=dev;

export lolserv='95.172.65.1'
export C_INCLUDE_PATH="/usr/local/bin"

export PS1="\n(\t)\n[\w]\n\$ "

# configure globs
shopt -s extglob
shopt -s dotglob

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
    cp -r "$1" "~/backups/${1}.bak"
  fi
}

export CLICOLOR=1

# set PATH for personal scripts
export PATH="$PATH:/Users/connorminton/bin"

# set PATH for LaTeX
export PATH="$PATH:/usr/texbin"

# add /usr/local/sbin
export PATH="$PATH:/usr/local/sbin"

# add Python bin
export PATH="$PATH:/Users/connorminton/Library/Python/2.7/bin"

# MacPorts Installer addition on 2016-01-27_at_19:55:04: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

##
# set PYTHONPATH
##
PYTHONPATH="${PYTHONPATH}:/usr/local/lib/python2.7/site-packages"
export PYTHONPATH
