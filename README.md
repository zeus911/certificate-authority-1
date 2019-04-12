# certificate-authority

Assumption(s):
- Codebases checking out this repo, place it at $HOME/git/certificate-authority.  

User Certificate
- User creates Private Key (PK)  
  ``
- User creates user-based Certificate Signing Request (CSR)  
  ``
- Intermediate Certificate Authority (ICA) reviews and approves the user-based CSR then create the User Certificate (UC)  
  ``

Server Certificate
- User creates PK  
  `testing`

- User creates server-based CSR  
  ``
- ICA reviews and approves the server-based CSR then create the Server Certificate (SC)  
  ``
