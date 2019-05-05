cd root/ca

openssl genrsa -aes256 -out intermediate/private/intermediate.key.pem 4096

chmod 700 intermediate/private/intermediate.key.pem

echo "New intermediate private key is located at root/ca/intermediate/private/intermediate.key.pem"


