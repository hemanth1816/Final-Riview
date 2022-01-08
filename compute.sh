read -p "enter the first input $a " a
read -p "enter the second input $b " b
read -p "enter the third input $c " c
echo "three inputs are : $a $b $c"
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

