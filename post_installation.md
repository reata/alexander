# Common Pieces
## Install custom Python version via pyenv
```shell
pyenv install 3.12.3 3.11.9 3.10.14 3.9.19 3.8.19
pyenv global 3.12.3 3.11.9 3.10.14 3.9.19 3.8.19
```

# MacOS Only
## Install Docker Desktop
The Docker Engine daemon cannot run natively on MacOS because it uses Linux-specific kernel features.
The `docker` binary installed from brew is only a Docker CLI client, and is basically useless without Docker Engine.

The recommended way is to use Docker Desktop, which manages a lightweight LinuxKit VM running Docker Engine.

Reference:
- https://docs.docker.com/desktop/install/mac-install/
- https://www.docker.com/blog/the-magic-behind-the-scenes-of-docker-desktop/
