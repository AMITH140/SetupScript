#!/bin/bash

echo "Select the apps you want to install:"
echo "(Separate multiple choices with commas, e.g., 1,2,5)"
echo
echo "--- Productivity ---"
echo "1. Notion"
echo "2. Todoist"
echo "3. Spotify"
echo "4. WhatsApp"
echo "5. Bitwarden"
echo "6. RescueTime"
echo "7. LibreOffice"
echo
echo "--- Development ---"
echo "8. Visual Studio Code"
echo "9. Git"
echo "10. Node.js"
echo "11. Python"
echo "12. Docker"
echo "13. Postman"
echo "14. Notepad++"
echo "15. Zoom"
echo "16. JetBrains PyCharm Community"
echo "17. GitHub Atom"
echo "18. Grammarly"
echo "19. Microsoft Edge"
echo "20. Oracle JDK 19"
echo
echo "--- Browsers ---"
echo "21. Brave"
echo "22. Google Chrome"
echo "23. Tor Browser"
echo "24. Opera"
echo
echo "25. All of the above"
echo "26. Exit"
echo
read -p "Enter your choice(s) (1-26): " choices

IFS=',' read -ra ADDR <<< "$choices"
for i in "${ADDR[@]}"; do
    case $i in
        1) sudo apt install notion ;;
        2) sudo apt install todoist ;;
        3) sudo apt install spotify ;;
        4) sudo apt install whatsapp ;;
        5) sudo apt install bitwarden ;;
        6) sudo apt install rescuetime ;;
        7) sudo apt install libreoffice ;;
        8) sudo apt install code ;;
        9) sudo apt install git ;;
        10) sudo apt install nodejs ;;
        11) sudo apt install python3 ;;
        12) sudo apt install docker.io ;;
        13) sudo apt install postman ;;
        14) sudo apt install notepadqq ;;
        15) sudo apt install zoom ;;
        16) sudo apt install pycharm-community ;;
        17) sudo apt install atom ;;
        18) sudo apt install grammarly ;;
        19) sudo apt install microsoft-edge ;;
        20) sudo apt install oracle-java19-installer ;;
        21) sudo apt install brave-browser ;;
        22) sudo apt install google-chrome-stable ;;
        23) sudo apt install tor ;;
        24) sudo apt install opera ;;
        25) sudo apt install notion todoist spotify whatsapp bitwarden rescuetime libreoffice code git nodejs python3 docker.io postman notepadqq zoom pycharm-community atom grammarly microsoft-edge oracle-java19-installer brave-browser google-chrome-stable tor opera ;;
        26) exit 0 ;;
        *) echo "Invalid option" ;;
    esac
done

read -p "Do you want to install the basic pip packages for a smoother workflow? (y/n): " install_pip
if [[ "$install_pip" == "y" ]]; then
    pip install numpy pandas matplotlib scipy scikit-learn requests Flask Django beautifulsoup4 sqlalchemy pytest virtualenv tensorflow keras torch seaborn plotly opencv-python pillow click pylint black flake8 selenium jupyter flask-restful flask_sqlalchemy celery redis pyqt5 pyqtwebengine pyserial pytz pyyaml gunicorn cx_freeze sqlparse pyglet pyaudio pyinstaller pyopengl pyjwt xlsxwriter pyodbc python-dotenv pyautogui pandas-profiling python-docx flask-cors
fi

echo "Installation process completed."
