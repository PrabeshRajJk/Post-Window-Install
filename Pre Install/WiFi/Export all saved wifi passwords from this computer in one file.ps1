<#
   This Powershell script works when you manually open the powershell with admin prev and copy paste the following code 
change to $env:c:\  to  $env:PSScriptRoot  if the code runs from script 
$DesktopPath if
$env:$ScriptPath
#>


(netsh wlan show profiles) | Select-String "\:(.+)$" | %{$name=$_.Matches.Groups[1].Value.Trim(); $_} | %{(netsh wlan show profile name="$name" key=clear)}  | Select-String "Key Content\W+\:(.+)$" | %{$pass=$_.Matches.Groups[1].Value.Trim(); $_} | %{[PSCustomObject]@{ PROFILE_NAME=$name;PASSWORD=$pass }} | Format-Table -AutoSize | Out-File "$env:C:\WirelessNetworkPasswords.txt"
