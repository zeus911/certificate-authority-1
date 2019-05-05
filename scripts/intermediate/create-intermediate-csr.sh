cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl req -config $root_ca_home/intermediate/openssl.cnf -new -sha256 \
  -key $root_ca_home/intermediate/private/intermediate.key.pem \
  -out $root_ca_home/intermediate/csr/intermediate.csr.pem

echo "New Certificate Signing Request (CSR) located at $root_ca_home/intermediate/csr/intermediate.csr.pem"
