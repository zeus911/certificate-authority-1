cd /root/ca

openssl ca -config intermediate/openssl.cnf \
  -gencrl -out intermediate/crl/intermediate.crl.pem
