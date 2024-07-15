@echo off
start "" /B /WAIT cmd /c "cd %USERPROFILE%\AppData\Roming\Rime && git pull"
start "" /B /WAIT "C:\Program Files\Rime\weasel-0.16.1\WeaselDeployer.exe" /deploy
start "" /B /WAIT "C:\Program Files\Rime\weasel-0.16.1\WeaselDeployer.exe" /sync