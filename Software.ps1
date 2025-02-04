$path = "C:\Na\Installation"
If(!(test-path -PathType container $path))
{
      New-Item -ItemType Directory -Path $path
}
echo y | powershell install-module -name POSHNOTIFY -Scope CurrentUser -Force
$workdir = "c:\na\installation\"
set-location C:\NA\Installation
Clear-Host
send-osnotification -body 'Downloading TeamViewer' -Title 'Network Associates'
$source = "https://download.teamviewer.com/full"
$destination = "$workdir\TV.exe"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing TeamViewer' -Title 'Network Associates'
.\TV.exe /S
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading Zoom' -Title 'Network Associates'
$source = "https://zoom.us/client/5.12.6.10137/ZoomInstallerFull.exe?archType=x64"
$destination = "$workdir\Zoom.exe"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing Zoom' -Title 'Network Associates'
.\Zoom.exe /silent
start-sleep -seconds 5
Clear-Host
$source = "https://files3.codecguide.com/K-Lite_Codec_Pack_1725_Basic.exe"
$destination = "$workdir\Klite.exe"
Invoke-WebRequest $source -OutFile $destination
Clear-Host
send-osnotification -body 'Downloading JDK8' -Title 'Network Associates'
$source = "https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u352-b08/OpenJDK8U-jdk_x64_windows_hotspot_8u352b08.msi"
$destination = "$workdir\Openjdk8.msi"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing JDK8' -Title 'Network Associates'
.\openjdk8.msi /passive
start-sleep -seconds 15
Clear-Host
send-osnotification -body 'Downloading JDK11' -Title 'Network Associates'
$source = "https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.17%2B8/OpenJDK11U-jdk_x64_windows_hotspot_11.0.17_8.msi"
$destination = "$workdir\Openjdk11.msi"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing JDK11' -Title 'Network Associates'
.\openjdk11.msi /passive
start-sleep -seconds 15
Clear-Host
send-osnotification -body 'Downloading Google Chrome' -Title 'Network Associates'
$source = "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B5BDB0487-C973-62F8-C2C9-4D5281D83E08%7D%26lang%3Den%26browser%3D3%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/chrome/install/ChromeStandaloneSetup64.exe"
$destination = "$workdir\Chrome.exe"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing Google Chrome' -Title 'Network Associates'
.\chrome.exe /install|taskkill /f /im chrome.exe
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading TS Print' -Title 'Network Associates'
$source = "https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe"
$destination = "$workdir\TSprint.exe"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing TS Print' -Title 'Network Associates'
.\tsprint.exe /silent
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading NetTime' -Title 'Network Associates'
$source = "https://www.timesynctool.com/NetTimeSetup-314.exe"
$destination = "$workdir\Nettime.exe"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Downloading NetTime' -Title 'Network Associates'
.\nettime.exe /silent
Clear-Host
send-osnotification -body 'Downloading ESET Endpoint Security' -Title 'Network Associates'
# Path for the workdir
$workdir = "c:\na\installation\"
$source = "https://download.eset.com/com/eset/apps/business/ees/windows/latest/ees_nt64.msi"
$destination = "$workdir\ESET.msi"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing ESET Endpoint Security' -Title 'Network Associates'
.\eset.msi /passive
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading Adobe' -Title 'Network Associates'
Invoke-WebRequest $source -OutFile $destination
stop-process -name egui
$source = "http://ardownload.adobe.com/pub/adobe/reader/win/AcrobatDC/1502320053/AcroRdrDC1502320053_en_US.exe"
$destination = "$workdir\PDF.exe"
Invoke-WebRequest $source -OutFile $destination
Clear-Host
