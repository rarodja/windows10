@ECHO OFF
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsCommunicationsApps* | Remove-AppxPackage"
%WINDIR%\SysWOW64\OneDriveSetup.exe /Uninstall
RMDIR /S /Q "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Administrative Tools"
RMDIR /S /Q "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\System Tools"
RMDIR /S /Q "%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools"
RMDIR /S /Q %ONEDRIVE%
winget install --id=Git.Git -e && winget install --id=OpenJS.NodeJS.LTS -e
winget install --id=Microsoft.VisualStudioCode -e && winget install --id=Flywheel.Local -e
winget install --id=TheDocumentFoundation.LibreOffice -e && winget install --id=Google.Chrome -e
winget install --id=RARLab.WinRAR -e && winget install --id=appmakes.Typora -e
git clone https://github.com/antiden/macOS-cursors-for-Windows.git
PAUSE
EXIT