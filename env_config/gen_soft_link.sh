home=~
home=$home/
get_input(){
	read string
	if [ $string = "y" -o $string = "Y" ];then
		echo "y"
	fi
}


for file in `find . -type f | grep -v "gen_soft_link.sh"`
do
	prefix=$home"`dirname $file`"
	filename=`basename $file`
	[ ! -d $prefix ] && mkdir -p $prefix
	if [ -f ${prefix}/${filename} ];then
		echo $filename exist! Do you want to overwrite it? [Y/N]:
		if [ -n "`get_input`" ];then
			ln -sf `pwd`/$file $prefix/$filename
		fi
	else
		ln -sf `pwd`/$file $prefix/$filename
	fi
done
