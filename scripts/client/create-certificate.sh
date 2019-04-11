cd /root/ca

openssl ca -config intermediate/openssl.cnf \
  -extensions server_cert -days 375 -notext -md sha256 \
  -in intermediate/csr/www.example.com.csr.pem \
  -out intermediate/certs/www.example.com.cert.pem

chmod 444 intermediate/certs/www.example.com.cert.pem
