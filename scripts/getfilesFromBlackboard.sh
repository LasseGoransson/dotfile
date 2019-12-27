lynx -listonly -nonumbers -dump html.html > links.txt
cat links.txt | grep bbcswebdav > links2.txt 
cat links2.txt | cut -f 3-8 -d"/" > links3.txt
#awk '$0="https://e-learn.sdu.dk"$0' links3.txt > links4.txt
cp links4.txt input.txt

while read p; do
    firefox $p
    sleep 1
done <input.txt
