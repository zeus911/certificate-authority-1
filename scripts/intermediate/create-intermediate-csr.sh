cd root/ca

openssl req -config intermediate/openssl.cnf -new -sha256 -key intermediate/private/intermediate.key.pem -out intermediate/csr/intermediate.csr.pem

echo "New Certificate Signing Request (CSR) located at root/ca/intermediate/csr/intermediate.csr.pem"
