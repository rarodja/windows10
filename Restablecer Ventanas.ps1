echo '-------------------------------------------------'
echo 'Restablecer Vista de Carpetas en Windows Explorer'
echo '-------------------------------------------------'
Remove-Item -Path 'HKCU:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU' -Recurse
Remove-Item -Path 'HKCU:\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags' -Recurse
echo 'Completado! - Es necesario reiniciar el sistema'
echo ''
Pause
Shutdown -R -T 0
Exit