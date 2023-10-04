SSH keys can be directly copied to another machine. The files needed are listed in the current folder,
though the content is removed to avoid sensitive information leakage.

Note permission needs to be taken care of after copy,
in particular, we shouldn't allow access to the private key from other users:
```shell
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
ssh-add
```
