# 7-zip installation
msiexec /i 7z1900-x64.msi /passive /norestart /le 7zip-log.txt TARGERDIR="C:\Program Files\7-Zip"

# Paint.Net installation
paintnet_4.2.10.exe /auto DESKTOPSHORTCUT=1 TARGETDIR="C:\Program Files\Graphics\Paint"

# lnkscape installation
msiexec /i inkscape-0.91-x64.msi /qr /norestart /lw inkscape-log.txt TARGETDIR="C:\Program Files\Graphics\Inkscape"

# LibreOffice installation
msiexec /i LibreOffice_6.4.2_Win_x64.msi /passive /norestart /le libreoffice-install-log.txt
msiexec /i LibreOffice_6.4.2_Win_x64_helppack_ru.msi /passive /forcerestart /le+ libreoffice-install-log.txt

# Notepad++ installation
npp.7.8.5.Installer.exe /S

# JRE installation
jre-8u251-windows-x64.exe INSTALLCFG=%~dp0\jre-config.txt /L jre-log.txt

