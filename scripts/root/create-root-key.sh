cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl genrsa -aes256 -out $root_ca_home/private/ca.key.pem 4096

chmod 400 $root_ca_home/private/ca.key.pem

echo "New root private key is located at $root_ca_home/private/ca.key.pem"
