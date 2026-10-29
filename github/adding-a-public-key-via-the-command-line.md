# Adding a Public Key via the Command Line

If you already have a public key located at `/root/.ssh/id_ed25519.pub` then you can use this command to add it to your GitHub SSH Keys
 
 ssh user@server-name 'cat /root/.ssh/id_ed25519.pub' | gh ssh-key add --title "server-name"

 Useful for when you're setting up a new server that needs to be able to do a git pull. 

 Pretty neat!
