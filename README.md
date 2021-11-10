# Jupyter Lab

## Features

* Running in Ubuntu 18.04
* Aria2 Web-UI/AriaNg included
* ffmpeg included
* handbrake included
* rclone
* Modified from [developeranaz/Jupyter-Notebook-Server-Heroku](https://github.com/developeranaz/Jupyter-Notebook-Server-Heroku)
---

## REQUIREMENTS
- ability to run terminal
- heroku account
- rclone.conf  ( use gist.. see the [TUTORIAL](https://gist.githubusercontent.com/javsubs91/1f39b762da0f86d90c36026a217a0281/raw/1f1d2529bfb3411352276940c187e99c8730fc31/RCLONE%2520GIST%2520TUTORIAL) if you need
* mtn thumbnailer 
- ngrok token

---
## DEPLOY YOUR OWN

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://dashboard.heroku.com/new?template=https://github.com/javsubs91/aria2-webui-running-in-jupyterlab)

---
## how to to start ariang?
1. open folder name `JupyterLab`
2. double click `AriaNg-WEB-UI.ipynb`
3. go to  [ngrok.com](https://dashboard.ngrok.com/auth/your-authtoken)
4. insert your token here `TOKEN = "insert ngrok token here"`
5. click ▶ (Run the selected cells and advance)

---
## how to transfer?
1. open notepad, copy this code to notepad `rclone move /root/downloads/my-file.mp4 drivename:/folder destination  -P`
2. back to notebook, Right-click on the file you want to copy/move, click `copy path`
3. paste `copy path` here `/root/downloads/my-file.mp4`
4. open `Terminal` , `ctrl v` click enter

NOTE: replace `drivename:/folder destination` with your remote cloud drive name in rclone config

- TRANSFER EXAMPLE
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(367).png" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(367).png" height="144px" />

---
## PREVIEW
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(362).png" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(362).png" height="200px" />
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(366).png" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(366).png" height="200px" />
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(365)_LI.jpg" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(365)_LI.jpg" height="200px" />
