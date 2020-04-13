
cd "$(dirname "$0")/.."


export OPTIONS="-y"
# Singlae file
export OPTIONS="$OPTIONS -F"
# Hide Commandwindow
export OPTIONS="$OPTIONS -w"
# increase log level
export OPTIONS="$OPTIONS --log-level=DEBUG"



# --distpath
# C:\Users\Dave\AppData\Local\Programs\Python\Python37\Lib\site-packages\pyscreenshot
# export OPTIONS="$OPTIONS --paths=C:/Users/Dave/AppData/Local/Programs/Python/Python37/Lib/site-packages/pyscreenshot"


pyinstaller $OPTIONS --distpath "bin" "TC.py"
