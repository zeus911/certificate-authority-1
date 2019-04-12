cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

if [ $# -eq 0 ]
  then
    echo "The certificate filename to validate is not provided.  Ex: www.example.com.cert.pem"
    echo ""
    exit
fi

certificate_filename=$1


echo "The details of your server_cert are shown below..."
echo ""

openssl x509 -noout -text \
  -in $root_ca_home/intermediate/certs/$certificate_filename
