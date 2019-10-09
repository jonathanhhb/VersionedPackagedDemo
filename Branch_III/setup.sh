for link in `ls -l|grep lrw|grep package|awk '{ print $(NF-2) }'`; do
    unlink $link
done

for val in `grep package version_set.txt`; do
    linkpath=$(sed 's#:#/#g' <<< $val); echo $linkpath; package=$(awk -F: '{ print $1 }' <<< $val); ln -s ../$linkpath $package;
done

