
cd "$(dirname "$0")/.."


export VERSION="v0.5.1"


export OPTIONS="-y"
# Singlae file
export OPTIONS="$OPTIONS -F"
# Hide Commandwindow
export OPTIONS="$OPTIONS -w"
# increase log level
export OPTIONS="$OPTIONS --log-level=DEBUG"

#	Icon	 -i Doc/Images/Logo/TC_Logo.ico
export OPTIONS="$OPTIONS -i TC_Logo.ico"
# set OPTIONS="%OPTIONS:"=% --add-binary Doc\Images\Logo\tclogo.ico;.\Doc\Images\Logo"
# export OPTIONS="$OPTIONS  --add-binary TC_Logo.ico:."

# --distpath
# C:\Users\Dave\AppData\Local\Programs\Python\Python37\Lib\site-packages\pyscreenshot
# export OPTIONS="$OPTIONS --paths=C:/Users/Dave/AppData/Local/Programs/Python/Python37/Lib/site-packages/pyscreenshot"


pyinstaller $OPTIONS --distpath "bin" "TC.py"

cd bin
rm -f TC_$(echo $VERSION)_Mac.zip
zip -r TC_$(echo $VERSION)_Mac.zip TC TC.app
cd -
