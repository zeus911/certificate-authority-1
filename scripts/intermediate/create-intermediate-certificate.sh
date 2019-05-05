# openssl ca -verbose -extensions v3_intermediate_ca -days 3650 -config root/ca/openssl.cnf -notext -md sha256 -in root/ca/intermediate/csr/intermediate.csr.pem -out root/ca/intermediate/certs/intermediate.cert.pem

openssl ca -config /home/wes/git/certificate-authority/root/ca/openssl.cnf -in root/ca/intermediate/csr/intermediate.csr.pem -out intermediate.cert.pem


ls -al root/ca/intermediate/certs

# chmod 444 root/ca/intermediate/certs/intermediate.cert.pem

echo "New intermediate certificate located at root/ca/intermediate/certs/intermediate.cert.pem"
