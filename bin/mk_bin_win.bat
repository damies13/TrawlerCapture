
cd /d %dp0/..

:: pyinstaller -y  "Z:/TrawlerCapture/TC.py"

:: pyinstaller -y -F -w  "Z:/TrawlerCapture/TC.py"

set OPTIONS="-y"
:: Singlae file
set OPTIONS="%OPTIONS:"=% -F"
:: Hide Commandwindow
set OPTIONS="%OPTIONS:"=% -w"
:: increase log level
set OPTIONS="%OPTIONS:"=% --log-level=DEBUG"

:: Using this option creates a Manifest which will request elevation upon application restart.
:: set OPTIONS="%OPTIONS:"=% --uac-admin"
:: Using this option allows an elevated application to work with Remote Desktop.
:: set OPTIONS="%OPTIONS:"=% --uac-uiaccess"


:: --distpath

:: C:\Users\Dave\AppData\Local\Programs\Python\Python37\Lib\site-packages\pyscreenshot

:: set OPTIONS="%OPTIONS:"=% --paths=C:/Users/Dave/AppData/Local/Programs/Python/Python37/Lib/site-packages/pyscreenshot"


pyinstaller %OPTIONS:"=% --distpath "Z:/TrawlerCapture/bin" "Z:/TrawlerCapture/TC.py"
