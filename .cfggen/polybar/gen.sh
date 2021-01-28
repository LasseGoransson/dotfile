dir=`dirname $0`
outfile="/home/lasg/.config/polybar/config"
cat $dir/global > $outfile
cat $dir/$(hostname) >> $outfile

