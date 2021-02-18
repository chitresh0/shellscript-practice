
read -p "enter" n
temp=$n
while [ $temp -gt 1 ]
do
	temp=`expr $temp - 1`
	n=`expr $n \* $temp`
done

echo $n
