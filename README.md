# certificate-authority

Assumption(s):
- Codebases checking out this repo, place it at $HOME/git/certificate-authority.  

Root Certificate Authority (RCA) root certificate creation
- Individual designated as the RCA creates their Private Key (PK)
- Individual designated as the RCA creates their root certificate 
- Individual designated as the RCA verifies the new root certificate

Intermediate Certificate Authority (ICA) Creation
- Individual designated as the ICA creates their Private Key (PK)
- Individual designated as the ICA creates their intermediate certificate 
- Individual designated as the ICA verifies the new intermediate certificate

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
