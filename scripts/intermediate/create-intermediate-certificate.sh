cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl ca -config $root_ca_home/openssl.cnf -extensions v3_intermediate_ca \
  -days 3650 -notext -md sha256 \
  -in $root_ca_home/intermediate/csr/intermediate.csr.pem \
  -out $root_ca_home/intermediate/certs/intermediate.cert.pem

chmod 444 $root_ca_home/intermediate/certs/intermediate.cert.pem

echo "New intermediate certificate located at $root_ca_home/intermediate/certs/intermediate.cert.pem"
