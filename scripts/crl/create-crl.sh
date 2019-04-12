cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl ca -config $root_ca_home/intermediate/openssl.cnf \
  -gencrl -out $root_ca_home/intermediate/crl/intermediate.crl.pem
