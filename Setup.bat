@echo off
:menu
echo.
echo Select the apps you want to install:
echo (Separate multiple choices with commas, e.g., 1,2,5)
echo.
echo --- Productivity ---
echo 1. Notion
echo 2. Todoist
echo 3. Spotify
echo 4. WhatsApp
echo 5. Bitwarden
echo 6. RescueTime
echo 7. LibreOffice

echo.
echo --- Development ---
echo 8. Visual Studio Code
echo 9. Git
echo 10. Node.js
echo 11. Python
echo 12. Docker
echo 13. Postman
echo 14. Notepad++
echo 15. Zoom
echo 16. JetBrains PyCharm Community
echo 17. GitHub Atom
echo 18. Grammarly
echo 19. Microsoft Edge
echo 20. Oracle JDK 19

echo.
echo --- Browsers ---
echo 21. Brave
echo 22. Google Chrome
echo 23. Tor Browser
echo 24. Opera

echo.
echo 25. All of the above
echo 26. Exit
echo.
set /p choices=Enter your choice(s) (1-26):

for %%i in (%choices%) do (
    if "%%i"=="1" call :install_notion
    if "%%i"=="2" call :install_todoist
    if "%%i"=="3" call :install_spotify
    if "%%i"=="4" call :install_whatsapp
    if "%%i"=="5" call :install_bitwarden
    if "%%i"=="6" call :install_rescuetime
    if "%%i"=="7" call :install_libreoffice
    if "%%i"=="8" call :install_vscode
    if "%%i"=="9" call :install_git
    if "%%i"=="10" call :install_nodejs
    if "%%i"=="11" call :install_python
    if "%%i"=="12" call :install_docker
    if "%%i"=="13" call :install_postman
    if "%%i"=="14" call :install_notepadpp
    if "%%i"=="15" call :install_zoom
    if "%%i"=="16" call :install_pycharm
    if "%%i"=="17" call :install_atom
    if "%%i"=="18" call :install_grammarly
    if "%%i"=="19" call :install_edge
    if "%%i"=="20" call :install_jdk19
    if "%%i"=="21" call :install_brave
    if "%%i"=="22" call :install_chrome
    if "%%i"=="23" call :install_tor
    if "%%i"=="24" call :install_opera
    if "%%i"=="25" call :install_all
    if "%%i"=="26" goto end
)

set /p install_pip=Do you want to install the basic pip packages for a smoother workflow? (y/n):
if /i "%install_pip%"=="y" call :install_pip_packages

set /p optimize_windows=Do you want to optimize Windows settings for better performance? (y/n):
if /i "%optimize_windows%"=="y" call :optimize_windows_settings

goto end

:install_notion
winget install --id Notion.Notion -e
goto :eof

:install_todoist
winget install --id Doist.Todoist -e
goto :eof

:install_spotify
winget install --id Spotify.Spotify -e
goto :eof

:install_whatsapp
winget install --id WhatsApp.WhatsApp -e
goto :eof

:install_bitwarden
winget install --id Bitwarden.Bitwarden -e
goto :eof

:install_rescuetime
winget install --id RescueTime.DesktopApp -e
goto :eof

:install_libreoffice
winget install --id TheDocumentFoundation.LibreOffice -e
goto :eof

:install_vscode
winget install --id Microsoft.VisualStudioCode -e
goto :eof

:install_git
winget install --id Git.Git -e
goto :eof

:install_nodejs
winget install --id OpenJS.Nodejs.LTS -e
goto :eof

:install_python
winget install --id Python.Python.3 -e
goto :eof

:install_docker
winget install --id Docker.DockerDesktop -e
goto :eof

:install_postman
winget install --id Postman.Postman -e
goto :eof

:install_notepadpp
winget install --id Notepad++.Notepad++ -e
goto :eof

:install_zoom
winget install --id Zoom.Zoom -e
goto :eof

:install_pycharm
winget install --id JetBrains.PyCharm.Community -e
goto :eof

:install_atom
winget install --id GitHub.Atom -e
goto :eof

:install_grammarly
winget install --id Grammarly.Grammarly -e
goto :eof

:install_edge
winget install --id Microsoft.Edge -e
goto :eof

:install_jdk19
winget install --id Oracle.JDK.19 -e
goto :eof

:install_brave
winget install --id Brave.Brave -e
goto :eof

:install_chrome
winget install --id Google.Chrome -e
goto :eof

:install_tor
winget install --id TorProject.TorBrowser -e
goto :eof

:install_opera
winget install --id Opera.Opera -e
goto :eof

:install_all
winget install --id Microsoft.VisualStudioCode -e
winget install --id Git.Git -e
winget install --id OpenJS.Nodejs.LTS -e
winget install --id Python.Python.3 -e
winget install --id Docker.DockerDesktop -e
winget install --id Postman.Postman -e
winget install --id Notepad++.Notepad++ -e
winget install --id Zoom.Zoom -e
winget install --id Notion.Notion -e
winget install --id Doist.Todoist -e
winget install --id Spotify.Spotify -e
winget install --id WhatsApp.WhatsApp -e
winget install --id Bitwarden.Bitwarden -e
winget install --id RescueTime.DesktopApp -e
winget install --id TheDocumentFoundation.LibreOffice -e
winget install --id Microsoft.Edge -e
winget install --id Oracle.JDK.19 -e
winget install --id Brave.Brave -e
winget install --id Google.Chrome -e
winget install --id TorProject.TorBrowser -e
winget install --id Opera.Opera -e
goto :eof

:install_pip_packages
pip install numpy pandas matplotlib scipy scikit-learn requests Flask Django beautifulsoup4 sqlalchemy pytest virtualenv tensorflow keras torch seaborn plotly opencv-python pillow click pylint black flake8 selenium jupyter flask-restful flask_sqlalchemy celery redis PyQt5 PyQtWebEngine pyserial pytz pyyaml gunicorn cx_Freeze sqlparse pyglet pyaudio pyinstaller PyOpenGL pyjwt xlsxwriter pyodbc python-dotenv pyautogui pandas-profiling python-docx flask-cors
goto :eof

:optimize_windows_settings
:: Enable high performance mode
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

:: Adjust for best performance settings
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f

:: Disable startup apps
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v ExampleApp /t REG_SZ /d "C:\Path\To\App.exe" /f

echo.
echo Windows optimization completed.
pause
goto :eof

:end
echo.
echo Installation process completed.
pause
