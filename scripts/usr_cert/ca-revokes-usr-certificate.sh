cd /root/ca

openssl ca -config intermediate/openssl.cnf \
  -revoke intermediate/certs/bob@example.com.cert.pem
  
# CA needs to recreate the CRL after revoking usr certificate
