cd /root/ca

openssl genrsa -aes256 \
  -out intermediate/private/www.example.com.key.pem 2048

chmod 400 intermediate/private/www.example.com.key.pem
