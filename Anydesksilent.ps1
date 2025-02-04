send-osnotification -body 'Downloading AnyDesk' -Title 'Network Associates'
 New-Item -ItemType Directory -Force -Path C:\NA\Installation
$workdir = "c:\na\installation\"
$source = "https://download.anydesk.com/AnyDesk.exe"
$destination = "$workdir\AnyDesk.exe"
Invoke-WebRequest $source -OutFile $destination
cd C:\NA\Installation
send-osnotification -body 'Installing AnyDesk' -Title 'Network Associates'
.\AnyDesk.exe --install "C:\Program Files (x86)\AnyDesk" --start-with-win --create-shortcuts --create-desktop-icon --silent
Start-Sleep -Seconds 15
$NewPassword = 'Supp0rt@NA123'
Invoke-Command -ScriptBlock {
    Param($NewPassword)
    $Expression = 'echo {0} | "C:\Program Files (x86)\AnyDesk\AnyDesk.exe" --set-password' -f $NewPassword
    Start-Process cmd.exe -ArgumentList "/c $Expression"
} -ArgumentList $NewPassword
