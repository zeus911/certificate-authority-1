cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

if [ $# -eq 0 ]
  then
    echo "Private key filename not provided.  Ex: www.example.com.key.pem"
    echo ""
    exit
fi

private_key_name=$1

openssl genrsa -aes256 \
  -out $root_ca_home/intermediate/private/$private_key_name 2048

chmod 400 $root_ca_home/intermediate/private/$private_key_name

echo "The new private key for your server_cert is located at $root_ca_home/intermediate/private/$private_key_name"
