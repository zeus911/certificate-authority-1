destination="$HOME/usr_cert"

mkdir $destination

cd $destination

openssl genrsa -out bob@example.com.key.pem 2048

openssl req -new -key bob@example.com.key.pem \
  -out bob@example.com.csr.pem

echo "Private key and Certificate Signing Request (CSR) have been placed at $destination"
