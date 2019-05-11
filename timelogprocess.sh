while read p; do
    echo "$(basename $p | cut -f1 -d'.'),$(cat timelog/$p | wc -l) "
done <timeloglist.txt
