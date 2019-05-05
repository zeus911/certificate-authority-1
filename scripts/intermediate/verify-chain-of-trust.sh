cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

echo "Chain of trust details are shown below..."
echo ""

openssl verify -CAfile $root_ca_home/certs/ca.cert.pem \
  $root_ca_home/intermediate/certs/intermediate.cert.pem


