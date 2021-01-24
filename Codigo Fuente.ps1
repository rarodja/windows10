<#
--------------------------------------------------
DESINSTALAR LAS APLICACIONES
--------------------------------------------------
#>
Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.People* | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Windows.Photos* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage
Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage
Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage
Get-AppxPackage *king.com* | Remove-AppxPackage
Get-AppxPackage *SpotifyAB.SpotifyMusic* | Remove-AppxPackage
<#
--------------------------------------------------
BORRAR CARPETAS Y AJUSTES VARIOS
--------------------------------------------------
#>
CMD /C REGSVR32 /S %WINDIR%\OldNewExplorer\OldNewExplorer64.dll
C:\Windows\SysWOW64\OneDriveSetup.exe -Uninstall
Remove-Item $Env:APPDATA\Microsoft\Windows\Start*\Programs\System* -Recurse -Force
Remove-Item C:\ProgramData\Microsoft\Windows\Start*\Programs\System* -Recurse -Force
Remove-Item C:\ProgramData\Microsoft\Windows\Start*\Programs\Administrative* -Recurse -Force
Remove-Item $Env:OneDrive -Recurse -Force
PowerCFG -Change STANDBY-TIMEOUT-AC 0
<#
--------------------------------------------------
AJUSTES DEL REGISTRO DE WINDOWS
--------------------------------------------------
#>
#AGREGAR CLAVES DE OLDNEWEXPLORER AL REGISTRO
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V DriveGrouping -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V HideFolders -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V NoRibbon -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V NoCaption -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V NoIcon -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V NoUpButton -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V NavBarGlass -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V IEButtons -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V Style -T REG_DWORD -D 1 -F
REG ADD 'HKCU\SOFTWARE\Tihiy\OldNewExplorer' -V StatusBar -T REG_DWORD -D 1 -F
#HABILITAR EL VISOR DE IMAGENES CLASICO
REG ADD 'HKCR\Applications\photoviewer.dll\shell\open' -V MuiVerb -D '@photoviewer.dll,-3043' -F
REG ADD 'HKCR\Applications\photoviewer.dll\shell\open\command' -T REG_EXPAND_SZ -D '%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %1' -F
REG ADD 'HKCR\Applications\photoviewer.dll\shell\open\DropTarget' -V Clsid -D '{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}' -F
#OCULTAR CUADRO DE BUSQUEDA
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Search' -V SearchboxTaskbarMode -T REG_DWORD -D 0 -F
#OCULTAR BOTON DE CORTANA DE LA BARRA DE TAREAS
REG ADD 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V ShowCortanaButton -T REG_DWORD -D 0 -F
#MOSTRAR BOTON VISTA DE TAREAS
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V ShowTaskViewButton -T REG_DWORD -D 0 -F
#DESACTIVAR CENTRO DE NOTIFICACIONES
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer' -V DisableNotificationCenter -T REG_DWORD -D 1 -F
#ELIMINAR ICONO DE MICROSOFT STORE DE LA BARRA DE TAREAS
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer' -V NoPinningStoreToTaskbar -T REG_DWORD -D 1 -F
#BUSQUEDA EN LA NUBE DE WINDOWS
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -V AllowCloudSearch -T REG_DWORD -D 0 -F
#MI HISTORIAL DE DISPOSITIVOS
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Search' -V DeviceHistoryEnabled -T REG_DWORD -D 0 -F
#DESACTIVAR BOTON MI HISTORIAL DE DISPOSITIVOS
REG ADD 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings' -V IsDeviceSearchHistoryEnabled -T REG_DWORD -D 0 -F
#DESACTIVAR CORTANA
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -V AllowCortana -T REG_DWORD -D 0 -F
#SUGERIR FORMAS DE FINALIZAR LA CONFIGURACION DE WINDOWS
REG ADD 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement' -V ScoobeSystemSettingEnabled -T REG_DWORD -D 0 -F
#DESACTIVAR EXPERIENCIAS COMPARTIDAS
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\System' -V EnableCdp -T REG_DWORD -D 0 -F
#DESACTIVAR AGREGAR CUENTAS MICROSOFT
REG ADD 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -V NoConnectedUser -D 1 -F
#DESACTIVAR REPRODUCCION AUTOMATICA
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers' -V DisableAutoplay -T REG_DWORD -D 1 -F
#MOSTRAR CARPETAS FRECUENTEMENTE USADAS EN EL ACCESO RAPIDO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer' -V ShowFrequent -T REG_DWORD -D 0 -F
#MOSTRAR COLOR EN BARRAS DE TITULO Y BORDES DE VENTANA
REG ADD 'HKCU\Software\Microsoft\Windows\DWM' -V ColorPrevalence -T REG_DWORD -D 1 -F
#ESTABLECER TEMA CLARO Y OSCURO POR DEFECTO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -V SystemUsesLightTheme -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -V AppsUsesLightTheme -T REG_DWORD -D 1 -F
#MOSTRAR ARCHIVOS DEL USUARIO Y ESTE EQUIPO EN EL ESCRITORIO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -V '{59031a47-3f72-44a7-89c5-5595fe6b30ee}' -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -V '{20D04FE0-3AEA-1069-A2D8-08002B30309D}' -T REG_DWORD -D 0 -F
#MOSTRAR APLICACIONES AGREGADAS RECIENTEMENTE
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer' -V HideRecentlyAddedApps -T REG_DWORD -D 1 -F
#MOSTRAR SUGERENCIAS OCASIONALMENTE EN INICIO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-338388Enabled -T REG_DWORD -D 0 -F
#MOSTRAR ELEMENTOS ABIERTOS RECIENTEMENTE EN LAS LISTAS DE ACCESOS DIRECTOS EN INICIO O EN LA BARRA DE TAREAS
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V Start_TrackDocs -T REG_DWORD -D 0 -F
#REEMPLAZAR SIMBOLO DEL SISTEMA POR POWERSHELL
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V DontUsePowerShellOnWinX -T REG_DWORD -D 1 -F
#PERMITE A WINDOWS HACER UN SEGUIMIENTO DE LOS LANZAMIENTOS DE APLICACIONES PARA MEJORAR EL INICIO Y LOS RESULTADOS DE BUSQUEDA
REG ADD 'HKCU\Software\Policies\Microsoft\Windows\EdgeUI' -V DisableMFUTracking -T REG_DWORD -D 1 -F
#MOSTRARME CONTENIDO SUGERIDO EN LA APLICACION CONFIGURACION
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-338393Enabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-353694Enabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-353696Enabled -T REG_DWORD -D 0 -F
#PERSONALIZACION DE ENTRADA MANUSCRITA Y ESCRITURA
REG ADD 'HKCU\Software\Microsoft\Personalization\Settings' -V AcceptedPrivacyPolicy -T REG_DWORD -D 0 -F
#FRECUENCIA DE COMENTARIOS
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -V DoNotShowFeedbackNotifications -T REG_DWORD -D 1 -F
#ALMACENAR MI HISTORIAL DE ACTIVIDADES EN ESTE DISPOSITIVO
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\System' -V PublishUserActivities -T REG_DWORD -D 0 -F
#DESACTIVAR INSTALAR APLICACIONES SUGERIDAS AUTOMATICAMENTE
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SilentInstalledAppsEnabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V OemPreInstalledAppsEnabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V PreInstalledAppsEnabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SystemPaneSuggestionsEnabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V ContentDeliveryAllowed -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V PreInstalledAppsEverEnabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SoftLandingEnabled -T REG_DWORD -D 0 -F
#DESACTIVAR WINDOWS CONSUMER FEATURES
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent' -V DisableWindowsConsumerFeatures -T REG_DWORD -D 1 -F
#DESACTIVAR EL REGISTRO EN LINEA DE REDES HOTSPOT 2.0
REG ADD 'HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache' -V OsuRegistrationStatus -T REG_DWORD -D 0 -F
#MOSTRAR SUGERENCIAS EN LA LINEA DE TIEMPO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-353698Enabled -T REG_DWORD -D 0 -F
#MOSTRARME LA EXPERIENCIA DE BIENVENIDA DE WINDOWS DESPUES DE LAS ACTUALIZACIONES
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-310093Enabled -T REG_DWORD -D 0 -F
#OBTENER TRUCOS, CONSEJOS Y RECOMENDACIONES MIENTRAS USAS WINDOWS
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-338389Enabled -T REG_DWORD -D 0 -F
#DESACTIVAR OPTIMIZACION DE ENTREGA
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' -V DODownloadMode -T REG_DWORD -D 0 -F
#GRABAR CLIPS DE JUEGOS, CAPTURAS DE PANTALLA Y RETRASMITIR CON LA BARRA DE JUEGOS
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR' -V AllowGameDVR -T REG_DWORD -D 0 -F
#ABRIR LA BARRA DE JUEGOS USANDO ESTE BOTON DEL MANDO
REG ADD 'HKCU\Software\Microsoft\GameBar' -V UseNexusForGameBarEnabled -T REG_DWORD -D 0 -F
#ESTABLECER EFECTOS VISUALES EN PERSONALIZADO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects' -V VisualFXSetting -T REG_DWORD -D 3 -F
#DESACTIVAR ANIMACIONES AL MINIMIZAR Y MAXIMIZAR VENTANAS
REG ADD 'HKCU\Control Panel\Desktop\WindowMetrics' -V MinAnimate -D 0 -F
#DESACTIVAR PEEK
REG ADD 'HKCU\SOFTWARE\Microsoft\Windows\DWM' -V EnableAeroPeek -T REG_DWORD -D 0 -F
#DESACTIVAR ANIMAR LOS CONTROLES Y ELEMENTOS DENTRO DE LAS VENTANAS
REG ADD 'HKCU\Control Panel\Desktop' -V UserPreferencesMask -T REG_BINARY -D 9012078010000000 -F
#DESACTIVAR ANIMACIONES EN LA BARRA DE TAREAS
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V TaskbarAnimations -T REG_DWORD -D 0 -F
#DESACTIVAR MOSTRAR CONTENIDO DE LA VENTANA MIENTRAS SE ARRASTRA
REG ADD 'HKCU\Control Panel\Desktop' -V DragFullWindows -D 0 -F
#DESACTIVAR CUADRO DE SELECCION TRANSLUCIDO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V ListviewAlphaSelect -T REG_DWORD -D 0 -F
#OCULTAR DIFERENTES PAGINAS DE OPCIONES EN CONFIGURACION
REG ADD 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer' -V SettingsPageVisibility -D 'hide:cortana-language;mobile-devices;gaming-gamebar;gaming-gamedvr;gaming-gamemode;gaming-xboxnetworking' -F
#RUNONCE
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce' -V Borrar -D 'C:\Windows\System32\cmd.exe /q /c DEL /q %WINDIR%\OldNewExplorer\Windows_Desatendido.exe' -F
<#
--------------------------------------------------
FINALIZAR Y REINICIAR
--------------------------------------------------
#>
Clear
Echo '-----------------------------------------------------'
Echo '-- COMPLETADO! - ES NECESARIO REINICIAR EL SISTEMA --'
Echo '-----------------------------------------------------'
Pause
Shutdown -R -T 0
Exit
