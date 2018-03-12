function trash() {
  if [ -z $1 ]; then
    echo "usage: trash thing [things...]"
    return 1
  fi
  mv -i "$@" /Users/connorminton/.Trash
}
