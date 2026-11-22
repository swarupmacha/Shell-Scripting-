NUM1=100
NUM2=200
SUM=$((NUM1+NUM2))
echo "sum is $SUM"

#array
FRUITS=("Apple" "Banana" "carrot")
echo "fruits are: ${FRUITS[@]}"
echo "first fruit is : ${FRUITS[0]}"
echo "first fruit is : ${FRUITS[1]}"
echo "first fruit is : ${FRUITS[2]}"