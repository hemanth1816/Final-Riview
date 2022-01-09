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
arr=${answers[@]}
j = 1
while [ $j -lt $n ] 
do
    c = 0
    k = $(expr $j - 1)
    while [ $k -ge 0 ] 
    do
        if [ ${arr[k]} -gt ${arr[j]} ] 
        then
            c=$(expr $c + 1)
        fi
    k = $(expr $k - 1)
    done
    
    x = $j
    y = $(expr $j - 1)
    
    while [ $c -gt 0 ]
    do
        # Swapping the elements
        temp=${arr[x]}
        arr[$x]=${arr[y]}
        arr[$y]=$temp
        
        x=$(expr $x - 1)
        y=$(expr $y - 1)
        c=$(expr $c - 1)
        
    done
    
    j = $(expr $j + 1)
done


echo "${arr[*]}"