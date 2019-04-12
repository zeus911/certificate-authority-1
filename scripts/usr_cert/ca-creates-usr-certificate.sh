cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

if [ $# -eq 0 ]
  then
    echo "The usr_cert filename to create is not provided.  Ex: bob@example.com.cert.pem"
    echo ""
    exit
fi

usr_certificate_filename=$1

openssl ca -config $root_ca_home/intermediate/openssl.cnf \
  -extensions usr_cert -notext -md sha256 \
  -in $root_ca_home/intermediate/csr/$usr_certificate_filename \
  -out $root_ca_home/intermediate/certs/$usr_certificate_filename

echo "The new usr_cert is located at $root_ca_home/intermediate/certs/$usr_certificate_filename"
