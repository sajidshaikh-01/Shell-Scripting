user="admin"
access="yes"

if [ "$user" = "admin" ] && [ "$access" = "yes" ]; then
  echo "Access granted"
else
  echo "Access denied"
fi
