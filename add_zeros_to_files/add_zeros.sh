#https://stackoverflow.com/questions/3672301/linux-shell-script-to-add-leading-zeros-to-file-names

mainDir=$1
extension=$2


for full_path in "$mainDir"/*; do
   	echo $full_path;
    pth=$( echo $full_path | sed "s,/[^/]*$,," )
    file=$( echo $full_path | sed "s,/.*/,," )	
    new_name=`printf %05d.%s ${file%.*} ${file##*.}`
	mv $full_path "$pth/$new_name"
done

