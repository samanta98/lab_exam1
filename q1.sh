# !/bin/bash
echo "Enter Two numbers : "
read a 
read b 
echo "Enter Choice :"
echo "1) +"
echo "2) -"
echo "3) *"
echo "4) /"
read z



sum()
{
  res=`echo $a + $b | bc` 
  echo "Result: $a "+" $b "=" $res "
}

sub()
{
    res=`echo $a - $b | bc` 
    echo "Result: $a "-" $b "=" $res "

}

mul()
{
    res=`echo $a \* $b | bc` 
    echo "Result: $a "*" $b "=" $res "
}

div()
{
    res=`echo "scale=2; $a / $b" | bc`
    echo "Result: $a "/" $b "=" $res " 
}
  
 
case $z in
  1)sum $a $b
   ;; 
  2)
   sub $a $b
  ;; 
  3)mul $a $b
  ;; 
  4)div $a $b
  ;; 
esac

