cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl genrsa -aes256 \
  -out $root_ca_home/intermediate/private/intermediate.key.pem 4096

chmod 400 $root_ca_home/intermediate/private/intermediate.key.pem

echo "New intermediate private key is located at $root_ca_home/intermediate/private/intermediate.key.pem"


