cd root/ca

openssl genrsa -aes256 -out private/ca.key.pem 4096

chmod 400 private/ca.key.pem

echo "New root private key is located at root/ca/private/ca.key.pem"
