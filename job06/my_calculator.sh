if [ "$2" = "+" ]
then
echo result=$(( $1 + $3 ))
elif [ "$2" = "-" ]
then
echo result=$(( $1 - $3 ))
elif [ "$2" = "/" ]
then
echo result=$(( $1 / $3 ))
elif [ "$2" = "x" ]
then
echo result=$(( $1 * $3 ))

fi
