cert_auth_home="$HOME/git/certificate-authority"
root_ca_home="$cert_auth_home/root/ca"

openssl x509 -noout -text -in $root_ca_home/certs/ca.cert.pem
