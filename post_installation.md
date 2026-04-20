# macOS Only
## Install Docker Desktop
The Docker Engine daemon cannot run natively on macOS because it uses Linux-specific kernel features.
The `docker` binary installed from brew is only a Docker CLI client, and is basically useless without Docker Engine.

The recommended way is to use Docker Desktop, which manages a lightweight LinuxKit VM running Docker Engine.

Reference:
- https://docs.docker.com/desktop/install/mac-install/
- https://www.docker.com/blog/the-magic-behind-the-scenes-of-docker-desktop/
