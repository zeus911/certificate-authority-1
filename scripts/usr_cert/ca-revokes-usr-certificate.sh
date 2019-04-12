cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl ca -config $root_ca_home/intermediate/openssl.cnf \
  -revoke $root_ca_home/intermediate/certs/bob@example.com.cert.pem
  
# CA needs to recreate the CRL after revoking usr certificate
