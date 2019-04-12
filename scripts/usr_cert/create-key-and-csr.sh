cd /home/bob

openssl genrsa -out bob@example.com.key.pem 2048

openssl req -new -key bob@example.com.key.pem \
  -out bob@example.com.csr.pem
