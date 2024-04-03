response=$(curl -s -w "%{http_code}" http://localhost:8080)
status_code="$(response: -3)" 

response_body="$(response: 0: -3)"

if [ "$status_code" -eq 200 ] && [ "$response_body" == 'Hello World\n' ]; then
  echo "Test passed!"
else
  echo "Test failed!"
fi