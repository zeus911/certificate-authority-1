cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

if [ $# -eq 0 ]
  then
    echo "The usr_cert filename to verify is not provided.  Ex: bob@example.com.cert.pem"
    echo ""
    exit
fi

usr_certificate_filename=$1

echo "The details of the usr_cert are shown below..."
echo ""

openssl verify -CAfile $root_ca_home/intermediate/certs/ca-chain.cert.pem \
  $root_ca_home/intermediate/certs/$usr_certificate_filename

