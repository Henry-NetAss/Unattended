cd c:\NA\Installation
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 2
powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 2
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 2
powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 2
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 0
powercfg -change -monitor-timeout-ac 15
powercfg -change -standby-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0
powercfg -change -monitor-timeout-dc 10
powercfg -change -standby-timeout-dc 0
powercfg -change -hibernate-timeout-dc 30
timeout 200
powershell.exe C:\NA\Installation\NIC_Power_Management.ps1
timeout 100
powershell -command "& {Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force}"
powershell.exe c:\na\installation\website.ps1
powershell.exe C:\NA\Installation\UAC_Disable.ps1
powershell.exe C:\NA\Installation\DarkMode.ps1
powershell.exe C:\NA\Installation\Region_Settings.ps1
powershell.exe C:\NA\Installation\Disable_Fast_Boot.ps1
tzutil /s "South Africa Standard Time"
powershell.exe C:\NA\Installation\software.ps1
echo Installing Stuff
powershell.exe C:\NA\Installation\Install-Microsoft365.ps1
timeout 5
cls
powershell -command "& {Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force}"
powershell.exe c:\na\Installation\Desktop_Shortcuts.ps1
timeout 5
cls
echo Installing Stuff
powershell -command "& {Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force}"
powershell.exe C:\NA\Installation\Anydesksilent.ps1
timeout 5
cls
powershell.exe C:\NA\Installation\remove_printers.ps1
cls

timeout 10
cls
powershell.exe C:\NA\Installation\updates.ps1
exit
