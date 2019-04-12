cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl ca -config $root_ca_home/intermediate/openssl.cnf \
  -extensions usr_cert -notext -md sha256 \
  -in $root_ca_home/intermediate/csr/bob@example.com.csr.pem \
  -out $root_ca_home/intermediate/certs/bob@example.com.cert.pem
