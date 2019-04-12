cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl genrsa -aes256 \
  -out $root_ca_home/intermediate/private/www.example.com.key.pem 2048

chmod 400 $root_ca_home/intermediate/private/www.example.com.key.pem
