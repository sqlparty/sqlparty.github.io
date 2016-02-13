num=0
for f in `ls *.html`
do
	echo $num
	echo $f
	echo "mv  file_$num $f" >> rollback
	mv $f file_$num
	num=`expr $num + 1`
done
