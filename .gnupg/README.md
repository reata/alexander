Note that GPG keys can't be copied directly to another machine. You need to export/import them.

### Listing Keys
```shell
gpg --list-keys
```

### Distributing Public Key
Since other people need your public key to verify your files, you have to distribute your public key to a key server.
This operation only needs to be done once.

KEY_NAME can be found from the listing keys command
```shell
gpg --keyserver keyserver.ubuntu.com --send-keys ${KEY_NAME}
```

### Export Public Key
YOUR_EMAIL can be found from the listing keys command. It's part of the input from generating key pair operation.
```shell
gpg --output public.pgp --armor --export ${YOUR_EMAIL}
```

### Export Secret Key
YOUR_EMAIL can be found from the listing keys command. It's part of the input from generating key pair operation.
```shell
gpg --output private.pgp --armor --export-secret-key ${YOUR_EMAIL}
```

### Import Public Key
```shell
gpg --import public.pgp
```

### Import Secret Key
```shell
gpg --import private.pgp
```

### Passphrase
When signing a file, you still need a passphrase if that's provided when generating key pair. 
Passphrase has to be learned by heart.
