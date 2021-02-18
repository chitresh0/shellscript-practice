sumdir=0
sumfile=0
for i in `ls -l | grep ^d | awk '{print $5}'`
do
	sumdir=`expr $sumdir + $i`
done


for i in `ls -l | grep ^- | awk '{print $5}'`
do
        sumfile=`expr $sumfile + $i`
done


echo "sum dir : $sumdir"
echo "sum file : $sumfile"


all=$(ls -l)
for i in $all
do
	echo $i | grep ^d
done
