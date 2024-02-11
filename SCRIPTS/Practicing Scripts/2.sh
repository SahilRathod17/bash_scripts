# This script works like a calculator and performs Addition, Subtraction, Division & Multiplication.

echo
echo "-------------------------------------------------------------------------"
echo
echo "Enter First No "
read n1
echo "Enter Second No "
read n2

echo
echo " 1. Addition "
echo " 2. Subtraction "
echo " 3. Multiplication "
echo " 4. Division "
echo
echo "Enter your choice "
read ch
echo

if [ $ch = "1" ]; then
    sum=`expr $n1 + $n2`
    echo "Output : $sum "
elif [ $ch = "2" ]; then
    sum=`expr $n1 - $n2`
    echo "Output : $sum "
elif [ $ch = "3" ]; then
    sum=`expr $n1 \* $n2`
    echo "Output : $sum"
elif [ $ch = "4" ]; then
    sum=`expr $n1 / $n2`
    echo "Output : $sum"
fi

echo
echo "---------------------------------------------------------------------------"