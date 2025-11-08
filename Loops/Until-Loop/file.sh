until [ -f /tmp/ready.txt ]
do
  echo "Waiting for file..."
  sleep 3
done

echo "✅ File is now available!"
