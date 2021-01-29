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
Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage
Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage
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
Start-Process -FilePath $Env:WINDIR\SysWOW64\OneDriveSetup.exe -ArgumentList /Uninstall
Remove-Item $Env:APPDATA\Microsoft\Windows\Start*\Programs\System* -Recurse -Force
Remove-Item $Env:PROGRAMDATA\Microsoft\Windows\Start*\Programs\System* -Recurse -Force
Remove-Item $Env:PROGRAMDATA\Microsoft\Windows\Start*\Programs\Administrative* -Recurse -Force
Remove-Item $Env:OneDrive -Recurse -Force
PowerCFG -Change STANDBY-TIMEOUT-AC 0
<#
--------------------------------------------------
AJUSTES DEL REGISTRO DE WINDOWS
--------------------------------------------------
#>
#OCULTAR CUADRO DE BUSQUEDA DE LA BARRA DE TAREAS
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Search' -V SearchboxTaskbarMode -T REG_DWORD -D 0 -F
#OCULTAR BOTON DE CORTANA DE LA BARRA DE TAREAS
REG ADD 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V ShowCortanaButton -T REG_DWORD -D 0 -F
#MOSTRAR BOTON VISTA DE TAREAS OCULTO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V ShowTaskViewButton -T REG_DWORD -D 0 -F
#DESACTIVAR CENTRO DE NOTIFICACIONES
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer' -V DisableNotificationCenter -T REG_DWORD -D 1 -F
#ELIMINAR ICONO DE MICROSOFT STORE DE LA BARRA DE TAREAS
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer' -V NoPinningStoreToTaskbar -T REG_DWORD -D 1 -F
#BUSQUEDA EN LA NUBE DE WINDOWS DESACTIVADO
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -V AllowCloudSearch -T REG_DWORD -D 0 -F
#MI HISTORIAL DE DISPOSITIVOS DESACTIVADO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Search' -V DeviceHistoryEnabled -T REG_DWORD -D 0 -F
#DESACTIVAR BOTON MI HISTORIAL DE DISPOSITIVOS
REG ADD 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings' -V IsDeviceSearchHistoryEnabled -T REG_DWORD -D 0 -F
#DESACTIVAR CORTANA
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -V AllowCortana -T REG_DWORD -D 0 -F
#SUGERIR FORMAS DE FINALIZAR LA CONFIGURACION DE WINDOWS DESACTIVADO
REG ADD 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement' -V ScoobeSystemSettingEnabled -T REG_DWORD -D 0 -F
#DESACTIVAR EXPERIENCIAS COMPARTIDAS
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\System' -V EnableCdp -T REG_DWORD -D 0 -F
#DESACTIVAR REPRODUCCION AUTOMATICA AL CONECTAR UN PENDRIVE
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers' -V DisableAutoplay -T REG_DWORD -D 1 -F
#MOSTRAR CARPETAS FRECUENTEMENTE USADAS EN EL ACCESO RAPIDO DESACTIVADO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer' -V ShowFrequent -T REG_DWORD -D 0 -F
#MOSTRAR COLOR EN BARRAS DE TITULO Y BORDES DE VENTANA HABILITADO
REG ADD 'HKCU\Software\Microsoft\Windows\DWM' -V ColorPrevalence -T REG_DWORD -D 1 -F
#ESTABLECER TEMA CLARO POR DEFECTO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -V SystemUsesLightTheme -T REG_DWORD -D 1 -F
#MOSTRAR APLICACIONES AGREGADAS RECIENTEMENTE DESACTIVADO
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer' -V HideRecentlyAddedApps -T REG_DWORD -D 1 -F
#MOSTRAR SUGERENCIAS OCASIONALMENTE EN INICIO DESACTIVADO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-338388Enabled -T REG_DWORD -D 0 -F
#MOSTRAR ELEMENTOS ABIERTOS RECIENTEMENTE EN LAS LISTAS DE ACCESOS DIRECTOS EN INICIO O EN LA BARRA DE TAREAS DESACTIVADO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V Start_TrackDocs -T REG_DWORD -D 0 -F
#REEMPLAZAR POWERSHELL POR SIMBOLO DEL SISTEMA EN EL MENU DE INICIO CONTEXTUAL
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V DontUsePowerShellOnWinX -T REG_DWORD -D 1 -F
#DESACTIVAR EL SEGUIMIENTO DE LOS LANZAMIENTOS DE APLICACIONES PARA MEJORAR EL INICIO Y LOS RESULTADOS DE BUSQUEDA
REG ADD 'HKCU\Software\Policies\Microsoft\Windows\EdgeUI' -V DisableMFUTracking -T REG_DWORD -D 1 -F
#MOSTRARME CONTENIDO SUGERIDO EN LA APLICACION CONFIGURACION DESACTIVADO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-338393Enabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-353694Enabled -T REG_DWORD -D 0 -F
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-353696Enabled -T REG_DWORD -D 0 -F
#DESACTIVAR PERSONALIZACION DE ENTRADA MANUSCRITA Y ESCRITURA
REG ADD 'HKCU\Software\Microsoft\Personalization\Settings' -V AcceptedPrivacyPolicy -T REG_DWORD -D 0 -F
#SOLICITUD DE LA FRECUENCIA DE COMENTARIOS DESACTIVADO
REG ADD 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -V DoNotShowFeedbackNotifications -T REG_DWORD -D 1 -F
#ALMACENAR MI HISTORIAL DE ACTIVIDADES EN ESTE DISPOSITIVO DESACTIVADO
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
#DESACTIVAR MOSTRAR SUGERENCIAS EN LA LINEA DE TIEMPO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-353698Enabled -T REG_DWORD -D 0 -F
#DESACTIVAR MOSTRARME LA EXPERIENCIA DE BIENVENIDA DE WINDOWS DESPUES DE LAS ACTUALIZACIONES
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-310093Enabled -T REG_DWORD -D 0 -F
#OBTENER TRUCOS, CONSEJOS Y RECOMENDACIONES MIENTRAS USAS WINDOWS DESACTIVADO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -V SubscribedContent-338389Enabled -T REG_DWORD -D 0 -F
#ESTABLECER EFECTOS VISUALES EN PERSONALIZADO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects' -V VisualFXSetting -T REG_DWORD -D 3 -F
#DESACTIVAR ANIMACIONES AL MINIMIZAR Y MAXIMIZAR VENTANAS
REG ADD 'HKCU\Control Panel\Desktop\WindowMetrics' -V MinAnimate -D 0 -F
#DESACTIVAR AERO PEEK
REG ADD 'HKCU\SOFTWARE\Microsoft\Windows\DWM' -V EnableAeroPeek -T REG_DWORD -D 0 -F
#DESACTIVAR ANIMAR LOS CONTROLES Y ELEMENTOS DENTRO DE LAS VENTANAS
REG ADD 'HKCU\Control Panel\Desktop' -V UserPreferencesMask -T REG_BINARY -D 9012078010000000 -F
#DESACTIVAR ANIMACIONES EN LA BARRA DE TAREAS
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V TaskbarAnimations -T REG_DWORD -D 0 -F
#DESACTIVAR MOSTRAR CONTENIDO DE LA VENTANA MIENTRAS SE ARRASTRA
REG ADD 'HKCU\Control Panel\Desktop' -V DragFullWindows -D 0 -F
#DESACTIVAR CUADRO DE SELECCION TRANSLUCIDO
REG ADD 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -V ListviewAlphaSelect -T REG_DWORD -D 0 -F
#ELIMINAR TILES EN EL MENU DE INICIO DE APLICACIONES DESINSTALADAS
REG DELETE 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount' /F
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
