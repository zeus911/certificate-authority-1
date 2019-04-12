cd /root/ca

openssl ca -config intermediate/openssl.cnf \
  -extensions usr_cert -notext -md sha256 \
  -in intermediate/csr/bob@example.com.csr.pem \
  -out intermediate/certs/bob@example.com.cert.pem
