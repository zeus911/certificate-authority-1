cd /root/ca
openssl genrsa -aes256 \
  -out intermediate/private/intermediate.key.pem 4096

# Enter pass phrase for intermediate.key.pem: secretpassword
# Verifying - Enter pass phrase for intermediate.key.pem: secretpassword

chmod 400 intermediate/private/intermediate.key.pem
