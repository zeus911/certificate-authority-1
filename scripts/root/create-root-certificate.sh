cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl req -config $root_ca_home/openssl.cnf \
  -key $root_ca_home/private/ca.key.pem \
  -new -x509 -days 7300 -sha256 -extensions v3_ca \
  -out $root_ca_home/certs/ca.cert.pem

chmod 444 $root_ca_home/certs/ca.cert.pem
