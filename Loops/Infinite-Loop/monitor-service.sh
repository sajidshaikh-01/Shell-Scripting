while true
do
  if systemctl is-active --quiet nginx
  then
    echo "✅ Nginx is running"
  else
    echo "❌ Nginx is down — restarting..."
    systemctl restart nginx
  fi
  sleep 5
done
