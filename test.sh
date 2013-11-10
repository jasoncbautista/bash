dirdir=two
echo "$dirdir"
mkdir "$dirdir" 

files=(*); cp "${files[@]}" ./"$dirdir"/
