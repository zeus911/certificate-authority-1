cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

if [ $# -eq 0 ]
  then
    echo "The certificate filename to validate the chain of trust on is not provided.  Ex: www.example.com.cert.pem"
    echo ""
    exit
fi

certificate_filename=$1

echo "The details of the server_cert are shown below..."
echo ""

openssl verify -CAfile $root_ca_home/intermediate/certs/ca-chain.cert.pem \
  $root_ca_home/intermediate/certs/$certificate_filename

