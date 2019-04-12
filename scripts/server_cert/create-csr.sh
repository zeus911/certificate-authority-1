cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

if [ $# -eq 0 ]
  then
    echo "Certificate Signing Request (CSR) filename not provided.  Ex: www.example.com.csr.pem"
    echo ""
    exit
fi

csr_name=$1

openssl req -config $root_ca_home/intermediate/openssl.cnf \
  -key $root_ca_home/intermediate/private/$csr_name \
  -new -sha256 -out $root_ca_home/intermediate/csr/$csr_name

echo "The Certificate Signing Request (CSR) for your server_cert is located at $root_ca_home/intermediate/csr/$csr_name"
