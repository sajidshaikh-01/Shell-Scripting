age=25
read -p "whats your age:" age
if [ $age -ge 18 ] && [ $age -le 30 ]
then
        echo "You Are Eligible"
else
        echo "You Are Not Eligible"
fi
