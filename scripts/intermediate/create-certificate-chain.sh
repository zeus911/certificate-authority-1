cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

cat $root_ca_home/intermediate/certs/intermediate.cert.pem \
  $root_ca_home/certs/ca.cert.pem > $root_ca_home/intermediate/certs/ca-chain.cert.pem

chmod 444 $root_ca_home/intermediate/certs/ca-chain.cert.pem

echo "New certificate chain file located at $root_ca_home/intermediate/certs/ca-chain.cert.pem"
