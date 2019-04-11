cd /root/ca

openssl req -config openssl.cnf \
  -key private/ca.key.pem \
  -new -x509 -days 7300 -sha256 -extensions v3_ca \
  -out certs/ca.cert.pem

# Enter pass phrase for ca.key.pem: secretpassword
# You are about to be asked to enter information that will be incorporated
# into your certificate request.
# -----
# Country Name (2 letter code) [XX]:GB
# State or Province Name []:England
# Locality Name []:
# Organization Name []:Alice Ltd
# Organizational Unit Name []:Alice Ltd Certificate Authority
# Common Name []:Alice Ltd Root CA
# Email Address []:

chmod 444 certs/ca.cert.pem
