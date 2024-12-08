Write-Output "Оптимизация Windows (Запустите от имени администратора!)"

Write-Output "Очистка файлов кэша"
Remove-Item -LiteralPath "C:\Windows\Temp" -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item -LiteralPath "C:\Users\%USERPROFILE%\AppData\Local\Temp" -Force -Recurse -ErrorAction SilentlyContinue
Clear-RecycleBin -Force -ErrorAction SilentlyContinue

Write-Output "Удаление установленных служб по умолчанию:"

Write-Output "Удаление OneDrive":
Get-AppxPackage onedrive | Remove-AppxPackage

Write-Output "Удаление 3dbuilder":
Get-AppxPackage 3dbuilder | Remove-AppxPackage

Write-Output "Календарь и почта"
Get-AppxPackage windowscommunicationsapps | Remove-AppxPackage

Write-Output "Удаление камеры"
Get-AppxPackage windowscamera | Remove-AppxPackage

Write-Output "Удаление скайп"
Get-AppxPackage skypeapp | Remove-AppxPackage

Write-Output "Удаление Groove Music"
Get-AppxPackage zunemusic | Remove-AppxPackage

Write-Output "Удаление Карт"
Get-AppxPackage windowsmaps | Remove-AppxPackage

Write-Output "Удаление Кино и ТВ"
Get-AppxPackage zunevideo | Remove-AppxPackage

Write-Output "Удаление новостей"
Get-AppxPackage bingnews | Remove-AppxPackage

Write-Output "Удаление OneNote"
Get-AppxPackage onenote | Remove-AppxPackage

Write-Output "Удаление Люди"
Get-AppxPackage people | Remove-AppxPackage

Write-Output "Удаление диспетчера телефонов"
Get-AppxPackage windowsphone | Remove-AppxPackage

Write-Output "Удаление Спорта"
Get-AppxPackage bingsports | Remove-AppxPackage

Write-Output "Удаление погоды"
Get-AppxPackage bingweather | Remove-AppxPackage

Write-Output "Удаление Xbox"
Get-AppxPackage xboxapp | Remove-AppxPackage

Write-Output "Проверка целостности файлов..."
sfc /scannow