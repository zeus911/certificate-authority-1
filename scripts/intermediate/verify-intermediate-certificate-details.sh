echo "Intermediate certificate details are shown below..."
echo ""

cd root/ca

openssl x509 -noout -text -in intermediate/certs/intermediate.cert.pem
