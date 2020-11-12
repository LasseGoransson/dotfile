dir=`dirname $0`
outfile="$HOME/.bashrc"
cat $dir/global > $outfile
cat $dir/$(hostname) >> $outfile

