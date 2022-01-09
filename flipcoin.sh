heads=1
tails=2
number=$((RANDOM%2+1))
echo "random number is : $number"
if [$number -eq $heads]
then
 echo "Heads $number"
else
 echo "Tails"
fi
for i in {0..9}
  do 
     echo "Heads $i "
