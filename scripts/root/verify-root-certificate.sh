cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

echo "Details for the root certificate is shown below..."
echo ""

openssl x509 -noout -text -in $root_ca_home/certs/ca.cert.pem

