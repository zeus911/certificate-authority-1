cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

echo "Intermediate certificate details are shown below..."
echo ""

openssl x509 -noout -text \
  -in $root_ca_home/intermediate/certs/intermediate.cert.pem
