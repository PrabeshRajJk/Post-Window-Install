
netsh wlan export profile key=clear folder="%cd%"

timeout /T 9
Exit

:: About 
:: >  Export / BACK UP wifi & password of Windows <
:: file will be saved in .xml format at the location where the .bat file will be saved
:: if you want to run it directly in cmd change "%cd%" to the location you want to save the .xml files
