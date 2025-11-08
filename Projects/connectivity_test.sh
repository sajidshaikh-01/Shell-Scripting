read -p "Which site you want to check?" site
ping -c 1 $site

if [[ $? -eq 0 ]]
then
        echo "you are sucessfully connected to $site"
else
        echo "you are disconnected to $site"
fi
