echo "Details for the root certificate is shown below..."
echo ""

cd root/ca

openssl x509 -noout -text -in certs/ca.cert.pem

