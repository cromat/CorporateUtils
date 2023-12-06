# CorporateUtils

Make your corporate work more enjoyable.

## Intro

A lot of corporations are using Windows with enhanced security and restrictions which is good but also reduces productivity. This is the reason why this repository exists and also to facilitate your daily work.

## Scripts

Provided in both executable and txt format because some corporations block direct download of executables but allow download of txt files which can be later manually set to correct executable format. Some corporations do not save user preferences after shutdown/restart and a set of scripts needs to be ran in order to makeyour environment better for work.

To enable powershell scripts, following needs to be run firstly:

```
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted -Force
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass -Force
```

### List of scripts

All scripts marked with [startup] are meant to be ran at the startup of Windows. To make them run at the startup, they need to be added to `C:\Users[USER]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`.

Don't forget to eddit executables with correct user path.

#### DefaultLang [startup]

 Sets default keyboard layout languages every n seconds. The `lang.cmd` file needs to be in the `Startup` folder and point to `lang.ps1` (e.g. `C:\Users\[USER]\apps\lang.ps1`).

#### ScreenNoLock [startup]

Blocks screen locking (which most corporations have after 5 minutes of inactivity) by simulating an irrelevant key press every n seconds. The `screen-nolock.cmd` file needs to be in `Startup` folder and point to `screen-nolock.ps1` (e.g. `C:\Users\[USER]\apps\screen-nolock.ps1`).


#### SetDefaultBrowser [startup]

Sets default browser (of your choice) as default on Windows startup. Put cmd file (e.g. `SetDefaultChrome.cmd`) in Startup folder and make sure its command points to `SetDefaultBrowser.exe`.


#### Watch

Linux watch basic alternative for Windows. Reruns given command every n seconds (could be changed in `watch.bat` script). Put script file somewhere on your machine and add it to your environment variables under `Path`.

Useful when watching static file logs from server e.g. `watch curl -s -r -10000 http://someservice/today.log` which will refresh last 10000 characters from that log file every n seconds.


## Chrome Extensions

Some corporations are blocking the isntallation of chrome extensions. You can find some basic helpful extensions in this repo. They can be added by enabling Developer mode in chrome Extension manager and by drag and dropping zip files inside or by clicking on "Load unpacked" button.

More info on every extension can be found on chrome extensions page or their official pages.


## Apps

#### Captura

Tool for video recording.

To setup, [ffmpeg](https://github.com/BtbN/FFmpeg-Builds/releases) needs to be downloaded and added from the app.

#### DBeaver

Developer database tool. There is portable (zip) version [here](https://github.com/portapps/dbeaver-portable/releases).

## Other

- If you are using or need to use Cisco AnyConnect VPN, go to preferences and check "Enable automatic certificate selection" so that VPN connecting works automatically and faster.

- If there are any other apps that you want to run on startup, you can add their shortcut to Startup folder as well. For example, search for Outlook in start menu, right click and choose "Open file location" and copy OUTLOOK.exe shortcut to Startup folder and that will make Outlook run on Windows startup/

- Ofter, internal corporate pages (mostly developer services etc.) have not updated SSL certs and you will be unable to reach them. In most cases, opening them in incognito/private mode will work.

- If software installations are disabled, there are some workarounds like downloading preinstalled binary/zip files, placing them manually on local machine and set up Path (User) environment variables to point to them (e.g. case for NodeJS)
