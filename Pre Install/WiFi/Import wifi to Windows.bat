for %%f in (.\*) do (
netsh wlan add profile filename=".\%%~nf.xml"
)

:: About 
:: >  Restore / Import wifi & password to Windows <
:: file will be saved in .xml format at the location where the .bat file will be saved
:: if you want to run it directly in cmd change "%cd%" to the location you want to save the .xml files
:: ><
