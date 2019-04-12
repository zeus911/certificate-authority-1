cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl req -config $root_ca_home/intermediate/openssl.cnf \
  -key $root_ca_home/intermediate/private/www.example.com.key.pem \
  -new -sha256 -out $root_ca_home/intermediate/csr/www.example.com.csr.pem
