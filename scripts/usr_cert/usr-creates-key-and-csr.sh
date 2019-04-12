if [ $# -eq 0 ]
  then
    echo "The filename to base the new private key and certificate signing request (CSR) were not provided.  Ex: bob@example.com"
    echo ""
    exit
fi

filename=$1

destination="$HOME/usr_cert"

mkdir $destination

cd $destination

openssl genrsa -out $filename.key.pem 2048

openssl req -new -key $filename.key.pem \
  -out $filename.csr.pem

echo "Private key and Certificate Signing Request (CSR) have been placed in $destination"
