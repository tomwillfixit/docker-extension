# docker-extension

Code which can be used to build and deploy a simple docker extension.

WARNING! Shells started by this plugin use an unsecured connection, have no password protection, and provide root access to your machine. Use at your own risk!

This code is heavily influenced by : https://github.com/thaJeztah/docker-shell/tree/shell_extension.

## Usage

Step 1 : Install the Docker Extension CLI. Instructions can be found [here](https://github.com/docker/extensions-sdk/releases/).

Step 2 : Build the extension image
```
make image
```

Step 3 : Install extension and verify
```
make install
```

If you want to make changes to the menu.sh script, docker-compose or ui components you can run the following command to quickly uninstall, rebuild and install updated extension :
```
make uninstall image install
```

Step 4 : Uninstall extension
```
make uninstall
```
