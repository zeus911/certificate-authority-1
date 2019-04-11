cd /root/ca

openssl req -config intermediate/openssl.cnf \
  -key intermediate/private/www.example.com.key.pem \
  -new -sha256 -out intermediate/csr/www.example.com.csr.pem
