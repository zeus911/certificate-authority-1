cd /root/ca

openssl ca -config intermediate/openssl.cnf \
  -revoke intermediate/certs/bob@example.com.cert.pem
