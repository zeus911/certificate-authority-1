cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl ca -config $root_ca_home/intermediate/openssl.cnf \
  -extensions server_cert -days 375 -notext -md sha256 \
  -in $root_ca_home/intermediate/csr/www.example.com.csr.pem \
  -out $root_ca_home/intermediate/certs/www.example.com.cert.pem

chmod 444 $root_ca_home/intermediate/certs/www.example.com.cert.pem
