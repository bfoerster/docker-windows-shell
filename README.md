# Docker Windows shell
This docker container allows one to use a Unix terminal based on Docker, similar to the Ubuntu Windows app.

# Setup
To use the the shell you need have Docker installed on your machine.
Create a docker container with the following command

```
docker build --tag windows-shell .
```

To start a new terminal you can use the following command. It mounts the Users folder to the container.

```
docker run -it --rm --mount type=bind,source=C:\Users,target=/home windows-shell
```

## Windows shortcut
You can create a windows shortcut, with the following target, to start the terminal directly.

```
%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe -command "docker run -it --rm --mount type=bind,source=C:\Users\foers,target=/home/bf windows-shell"
```

# TODOs
- Find a way to persist configurations inside the container
