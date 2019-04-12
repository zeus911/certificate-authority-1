# Certificate Authority

## Assumption(s):
- Codebases checking out this repo, place it at $HOME/git/certificate-authority.  

## Root Certificate Authority (RCA) root certificate creation
- Individual designated as the RCA creates their Private Key (PK)  
  `./scripts/root/ca/create-root-key.sh`
- Individual designated as the RCA creates their root certificate   
  `./scripts/root/ca/create-root-certificate.sh`
- Individual designated as the RCA verifies the new root certificate  
  `./scripts/root/ca/verify-root-certificate.sh`
  
## Intermediate Certificate Authority (ICA) intermediate certificate creation
- Individual designated as the ICA creates their PK  
  `./scripts/root/ca/intermediate/create-intermediate-key.sh`
- Individual designated as the ICA creates their Certificate Signing Request (CSR)  
  `./scripts/root/ca/intermediate/create-intermedaite-csr.sh`
- The RCA reviews the ICA CSR and creates their intermediate certificate   
  `./scripts/root/ca/intermediate/create-intermediate-certificate.sh`
- The ICA verifies the new Intermediate Certificate (IC)  
  `./scripts/root/ca/intermediate/verify-intermediate-certificate-details.sh`
- The ICA creates the certificate chain  
  `./scripts/root/ca/intermediate/create-certificate-chain.sh`
- The ICA verifies the Chain of Trust  
  `./scripts/root/ca/intermediate/verify-chain-of-trust.sh`
  
## User Certificate (UC) Creation
- User creates Private Key (PK) and CSR     
  `./scripts/usr_cert/usr-creates-key-and-csr.sh`   
- ICA reviews and approves the user-based CSR then create the UC    
  `./scripts/usr_cert/ca-creates-usr-certificate.sh`
- ICA verifies the UC  
  `./scripts/usr_cert/ca-verifies-usr-certificate.sh`

## Server Certificate Creation
- User creates PK    
  `./scripts/server_cert/create-key.sh`
- User creates server-based CSR  
  `./scripts/server_cert/create-csr.sh`
- ICA reviews and approves the server-based CSR then create the Server Certificate (SC)  
  `./scripts/server_cert/create-certificate.sh`
- ICA verifies the certificate details  
  `./scripts/server_cert/verify-certificate-details.sh`  
- ICA verifies the chain of trust  
  `./scripts/server_cert/verify-chain-of-trust.sh`
  
## Intermediate Certificate Authority (ICA) intermediate certificate revoking
- ICA revokes certificate  
  `./scripts/usr_cert/ca-revokes-usr-certificate.sh`  
- ICA recreates the Certificate Revocation List (CRL)  
  `./scripts/crl/create-crl.sh`
- ICA verifies the new CRL List  
  `./scripts/crl/check-crl-details.sh`
