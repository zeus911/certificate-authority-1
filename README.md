# certificate-authority

Assumption(s):
- Codebases checking out this repo, place it at $HOME/git/certificate-authority.  

Root Certificate Authority (RCA) Creation
- Individual designated as the RCA creates the Private Key (PK)
- Individual designated as the RCA creates the Certificate Signing Request (CSR) with generated PK
- Individual designated as the RCA verifies the 

Intermediate Certificate Authority (ICA) Creation
-


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
