:: TO list currently running services on startup
::
:: Open administrative command prompt and type "WMIC" then enter.
::  Type "startup" for a list of programs.



sc config AdobeARMservice start= disabled

sc config OneDriveSetup start= disabled
sc config Wechat start= disabled
sc config Viber start= disabled
sc config IDMan start= disabled
:: sc config  start= disabled
:: sc config  start= disabled
:: sc config  start= disabled
:: sc config  start= disabled
:: sc config "servicename" start= disabled

EXIT
:: cmd /k  

:: Regisrty location  
:: HKU\S-1-5-19\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
:: HKU\S-1-5-20\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
:: HKU\S-1-5-21-2988739662-2026086280-828728085-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
:: OneDrive
:: Wechat
:: IDMan
:: Viber
