for %%f in (.\*) do (
netsh wlan add profile filename=".\%%~nf.xml"
)

:: About 
:: >  Restore / Import wifi & password to Windows <
:: file saved in .xml format will be added to the winodws
:: KEEP THIS BAT FILE IN SAME FOLDER WHERE .XML FILE ARE
