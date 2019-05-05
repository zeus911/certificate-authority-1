# Certificate Authority

## Assumption(s):
- The repository is checked out to $HOME/git/certificate-authority.  

## Root Certificate Authority (RCA) root certificate creation
1. Individual designated as the RCA creates their Private Key (PK).  Executing the following script will result in a new private key at root/ca/private/ca.key.pem.  
  `./scripts/root/create-root-key.sh`
1. Individual designated as the RCA creates their root certificate.  Executing the following script will result in a new root certificate at root/ca/certs/ca.cert.pem.   
  `./scripts/root/create-root-certificate.sh`
1. Individual designated as the RCA verifies the new root certificate.  Executing the following script will not create any files, it just displays details on the root certificate that was created in the previous command.  
  `./scripts/root/verify-root-certificate.sh`
  
## Intermediate Certificate Authority (ICA) intermediate certificate creation
1. Individual designated as the ICA creates their PK  
  `./scripts/root/ca/intermediate/create-intermediate-key.sh`
1. Individual designated as the ICA creates their Certificate Signing Request (CSR)  
  `./scripts/root/ca/intermediate/create-intermedaite-csr.sh`
1. The RCA reviews the ICA CSR and creates their intermediate certificate   
  `./scripts/root/ca/intermediate/create-intermediate-certificate.sh`
1. The ICA verifies the new Intermediate Certificate (IC)  
  `./scripts/root/ca/intermediate/verify-intermediate-certificate-details.sh`
1. The ICA creates the certificate chain  
  `./scripts/root/ca/intermediate/create-certificate-chain.sh`
1. The ICA verifies the Chain of Trust  
  `./scripts/root/ca/intermediate/verify-chain-of-trust.sh`
  
## User Certificate (UC) Creation
1. User creates Private Key (PK) and CSR     
  `./scripts/usr_cert/usr-creates-key-and-csr.sh`   
1. ICA reviews and approves the user-based CSR then create the UC    
  `./scripts/usr_cert/ca-creates-usr-certificate.sh`
1. ICA verifies the UC  
  `./scripts/usr_cert/ca-verifies-usr-certificate.sh`

## Server Certificate Creation
1. User creates PK    
  `./scripts/server_cert/create-key.sh`
1. User creates server-based CSR  
  `./scripts/server_cert/create-csr.sh`
1. ICA reviews and approves the server-based CSR then create the Server Certificate (SC)  
  `./scripts/server_cert/create-certificate.sh`
1. ICA verifies the certificate details  
  `./scripts/server_cert/verify-certificate-details.sh`  
1. ICA verifies the chain of trust  
  `./scripts/server_cert/verify-chain-of-trust.sh`
  
## Intermediate Certificate Authority (ICA) intermediate certificate revoking
1. ICA revokes certificate  
  `./scripts/usr_cert/ca-revokes-usr-certificate.sh`  
1. ICA recreates the Certificate Revocation List (CRL)  
  `./scripts/crl/create-crl.sh`
1. ICA verifies the new CRL List  
  `./scripts/crl/check-crl-details.sh`
