cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

if [ $# -eq 0 ]
  then
    echo "The usr_cert filename to revoke is not provided.  Ex: bob@example.com.cert.pem"
    echo ""
    exit
fi

usr_certificate_filename=$1

openssl ca -config $root_ca_home/intermediate/openssl.cnf \
  -revoke $root_ca_home/intermediate/certs/$usr_certificate_filename
  
echo "The following usr_cert was revoked: $root_ca_home/intermediate/certs/$usr_certificate_filename"

echo "You 'the CA' now need to recreate the CRL..."
