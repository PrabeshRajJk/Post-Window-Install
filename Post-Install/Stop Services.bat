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