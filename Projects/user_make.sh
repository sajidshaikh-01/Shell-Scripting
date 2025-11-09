#!/bin/bash

#script should be execute with sudo/root access
if [[ "${UID}" -ne 0 ]]
then
        echo "Please run with sudo or root"
        exit 1
fi

#user should provide atleast one argument as username else guide him
if [[ $# -lt 1 ]]
then
        echo "Usage: ${0} USER_NAME [COMMENT]..."
        echo "Create a user with username and comments field of COMMENT"
        exit 1
fi

#store 1st argument as username
USER_NAME="${1}"
echo "$USER_NAME"


# In case of more than one argument, store it as account comments
shift
COMMENT="${@}"



#create a password
PASSWORD=$(date +%s%N)


#create the user
useradd -c "${COMMENT}" -m $USER_NAME


#check if user is successfully created or not
if [[ $? -ne 0 ]]
then
       echo "user is not created"
       exit 1
fi


#set password for the user
echo $PASSWORD | passwd --stdin $USER_NAME



#check if password is successfully created or  not
if [[ $? -ne 0 ]]
then
        echo "password could not be set"
        exit 1
fi


#force password change on first login
passwd -e $USER_NAME


#display the username, password and the hostname where we created
echo "Username: $USER_NAME
echo "Password: $PASSWORD"
echo "$(hostname)
