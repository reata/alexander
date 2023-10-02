SSH keys can be directly copied to another machine. The files needed are listed in the current folder,
though the content is removed to avoid sensitive information leakage.

Note permission needs to be taken care of after copy:
```shell
chmod 400 ~/.ssh/id_rsa
ssh-add
```
