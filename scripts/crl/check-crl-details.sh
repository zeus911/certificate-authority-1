cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl crl -in $root_ca_home/intermediate/crl/intermediate.crl.pem -noout -text
