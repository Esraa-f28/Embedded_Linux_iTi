#! /bin/bash 

USERNAME="yourName"
GROUPNAME="FamilyName"


#check if group exist 
if getent group "$GROUPNAME" > /dev/null;then 
	echo"GROUP '$GROUPNAME' arleady exist"
else 
	echo "Creating group '$GROUPNAME'"
	sudo groupadd "$GROUPNAME"
	echo "Group '$GROUPNAME' created successfully "
fi 

#check if user exist 
if id "$USERNAME" > /dev/null 2>&1; then 
	echo "user '$USERNAME' already exist "
else 
        echo "Creating user "
	sudo useradd -m -g "$GROUPNAME" "USERNAME"
	echo "successfully created user and add to group"
fi 

echo "User info "
id "$USERNAME"

echo "group info"
getent group "$GROUPNAME"
