cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl verify -CAfile $root_ca_home/intermediate/certs/ca-chain.cert.pem \
  $root_ca_home/intermediate/certs/bob@example.com.cert.pem
