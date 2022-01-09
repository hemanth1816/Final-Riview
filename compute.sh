read -p "enter the first input $a " a
read -p "enter the second input $b " b
read -p "enter the third input $c " c
echo "three inputs are : $a $b $c "
x=$(($a+$b*$c))
echo "$x"
y=$(($a*$b+$c))
echo "$y"
z=$(($c+$a/$b))
echo "$z"
p=$(($a%$b+$c))
echo "$p"
declare -A answers
answers[UC 2]="$x"
answers[UC 3]="$y"
answers[UC 4]="$z"
answers[UC 5]="$p"

echo "${answers[@]}"
array[0]="$(${answers[@]})"
array[1]="$(${answers[@]})"
array[2]="$(${answers[@]})"
array[3]="$(${answers[@]})"
echo"$array"

for ((i = 0; i<5; i++))
do
    
    for((j = 0; j<5-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$(j+1)]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}

