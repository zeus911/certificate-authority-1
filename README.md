# Certificate Authority

Assumption(s):
- Codebases checking out this repo, place it at $HOME/git/certificate-authority.  

Root Certificate Authority (RCA) root certificate creation
- Individual designated as the RCA creates their Private Key (PK)
- Individual designated as the RCA creates their root certificate 
- Individual designated as the RCA verifies the new root certificate

Intermediate Certificate Authority (ICA) intermediate certificate creation
- Individual designated as the ICA creates their PK
- Individual designated as the ICA creates their Certificate Signing Request (CSR)
- The RCA reviews the ICA CSR and creates their intermediate certificate 
- The ... verifies the new intermediate certificate
- Creation of Chain of Trust
- The ... verifies the Chain of Trust

User Certificate (UC) Creation
- User creates Private Key (PK)  
  ``
- User creates user-based Certificate Signing Request (CSR)  
  ``
- ICA reviews and approves the user-based CSR then create the UC  
  ``

Server Certificate
- User creates PK  
  `testing`

- User creates server-based CSR  
  ``
- ICA reviews and approves the server-based CSR then create the Server Certificate (SC)  
  ``
