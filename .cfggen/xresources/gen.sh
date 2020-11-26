dir=`dirname $0`
outfile="$HOME/.Xresources"
cat $dir/global > $outfile
cat $dir/$(hostname) >> $outfile

