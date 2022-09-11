# Turn any script into a Docker Extension in about 3 minutes*

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/I2I7CTFEN)

WARNING! Shells started by this plugin use an unsecured connection, have no password protection, and provide root access to your machine. Use at your own risk!

This code is heavily influenced by : https://github.com/thaJeztah/docker-shell/tree/shell_extension and more details can be found in this [post](https://medium.com/@tomwillfixit/turn-any-script-into-a-docker-extension-in-about-3-minutes-7885fd134468).

## Usage

Step 1 : If you have [Docker Desktop 4.10.0](https://docs.docker.com/desktop/release-notes/#docker-desktop-4100) or newer installed then you already have the "docker extension" command available. We recommend upgrading Docker Desktop but if you need to stay on a pre 4.10.0 version then you can install the Docker Extension CLI. Instructions can be found [here](https://github.com/docker/extensions-sdk/releases/).

Step 2 : Build the extension image
```
make image
```

Step 3 : Install extension and verify
```
make install
```
<img width="732" alt="image" src="https://user-images.githubusercontent.com/3006298/170358407-d10206b9-6700-4f55-9559-36cc74cb558c.png">

If you want to make changes to the menu.sh script, docker-compose or ui components you can run the following command to quickly uninstall, rebuild and install updated extension :
```
make uninstall image install
```

Step 4 : Uninstall extension
```
make uninstall
```
