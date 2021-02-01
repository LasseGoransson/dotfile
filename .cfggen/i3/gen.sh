dir=`dirname $0`
outfile="$HOME/.config/i3/config"
cat $dir/global > $outfile
cat $dir/$(hostname) >> $outfile

