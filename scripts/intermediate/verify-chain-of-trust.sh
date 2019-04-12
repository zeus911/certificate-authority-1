cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl verify -CAfile $root_ca_home/certs/ca.cert.pem \
  $root_ca_home/intermediate/certs/intermediate.cert.pem
