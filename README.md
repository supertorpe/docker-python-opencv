# docker-python-opencv

<p>Docker image to develop OpenCV apps with python / jupyter notebooks.</p>
<p>The image provides a virtual framebuffer (xvfb), a minimalistic window manager (jwm) and a VNC server (x11vnc), so you can develop opengl apps entirely within the container with no external dependencies.</p>
<p>You only need a VNC client to display the container desktop.</p>

# Run container

```
./start.sh
```
Now, you can connect your VNC client to localhost:5900 to display the container's desktop.

When Jupyter starts, it outputs the URL to the console:
```
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-27-open.html
    Or copy and paste one of these URLs:
        http://755eda89a397:8888/?token=3202be9db2253aac90014fa0394349cfbee2cf52208d5c43
     or http://127.0.0.1:8888/?token=3202be9db2253aac90014fa0394349cfbee2cf52208d5c43
```

You can access Jupyter with the URL http://127.0.0.1:8888/?token=3202be9db2253aac90014fa0394349cfbee2cf52208d5c43 using the token provided.

# OpenCV Development
<p>Your host folder './code' is mounted on the container's folder './app/code'. You can create .py and .ipynb files there and run them within the container.</p>
<p>You can also use Visual Studio Code extension "Dev containers" to attach vscode to the container and develop from there as if you were coding on the host.</p>
<p>I encourage you to install the vscode extension "Python" so that you can debug your code.</p>
<p>Make sure you create .py files from the host -not from the container-, because the container is running with "root" user, so the files you create from the container will belong to "root" user instead of your current user.</p>

# Shutting down the container

```
./stop.sh
```