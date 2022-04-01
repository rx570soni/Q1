echo "please enter values of a,b,c"

read a
read b
read c

echo -e "a: "$a "\nb: "$b "\nc: "$c

((compute1 = a + b * c))

((compute2 = a * b + c))

((compute3 = c + a / b))

((compute4 = a % b + c))


declare -A associative
associative[key1]=$compute1
associative[key2]=$compute2
associative[key3]=$compute3
associative[key4]=$compute4


arr=([1]=${associative[key1]} [2]=${associative[key2]} [3]=${associative[key3]} [4]=${associative[key4]})

echo "Descending order"
echo " "
for((i=4;i>=1;i--))
do
 echo ${arr[i]}
 echo " "
done

echo "Ascending order"
for((i=1;i<=4;i++))
do
 echo ${arr[i]}
 echo " "
done

echo "closing"