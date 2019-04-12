cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

if [ $# -eq 0 ]
  then
    echo "Server certificate name not provided.  Ex: www.example.com.cert.pem"
    echo ""
    exit
fi

server_cert_name=$1

openssl ca -config $root_ca_home/intermediate/openssl.cnf \
  -extensions server_cert -days 365 -notext -md sha256 \
  -in $root_ca_home/intermediate/csr/$server_cert_name \
  -out $root_ca_home/intermediate/certs/$server_cert_name

chmod 444 $root_ca_home/intermediate/certs/$server_cert_name

echo "New server_cert is located at $root_ca_home/intermediate/certs/$server_cert_name"
