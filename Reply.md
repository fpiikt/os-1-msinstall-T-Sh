## Лабораторная работа №0
Выполнила: Волошина Т.А.

Группа: P3322
## Отчет по заданию 1: создание скрипта для автоматизации установки под Windows
Был создан файл [auto_install.bat](https://github.com/fpiikt/os-1-msinstall-T-Sh/blob/master/auto_install.bat), 
содержащий единый скрипт по установке программ, указанных в задании.
1. Скрипт для установки [архиватора 7-zip](https://www.7-zip.org/a/7z1900-x64.msi):

|`msiexec /i 7z1900-x64.msi` | `/passive` | `/norestart` | `/le 7zip-log.txt` | `TARGERDIR="C:\Program Files\7-Zip"`|
|:--------------------------:|:------------:|:-------------:|:---------------------:|:--------------------------------------:|
|установка|автоматический режим|без перезагрузки|журнал установки(все сообщения) в 7zip-log.txt|каталог для установки|

2. Скрипт для установки [графического редактора Paint.Net](http://dl2.topfiles.net/files/2/61/670/ZUVSbmVP-iVQcERicjV2akVLMmRMbGNsOUkvK0wxbTQ2bDVwTlpLakp2aVA1OD06Okerz0XQ4rWqjGWU2_XFq_Q/paintnet_4.2.10.exe):

|`paintnet_4.2.10.exe` | `/auto` | `DESKTOPSHORTCUT=1` | `TARGETDIR="C:\Program Files\Graphics\Paint"`|
|:--------------------------:|:------------:|:-------------:|:---------------------:|
|установщик|полностью автоматическая установка|ярлык для запуска|каталог для установки|

3. Скрипт для установки [векторного графического редактора Inkscape](https://inkscape.org/ar/release/inkscape-0.91/windows/64-bit/msi/dl/):

|`msiexec /i inkscape-0.91-x64.msi` | `/qr` | `/norestart` | `/lw inkscape-log.txt` | `TARGETDIR="C:\Program Files\Graphics\Inkscape"`|
|:--------------------------:|:------------:|:-------------:|:---------------------:|:--------------------------------------:|
|установка|с сокращенным интерфейсом|без перезапуска|журнал установки(устранимые ошибки) в файл inkscape-log.txt|каталог для установки|

4. Скрипт для установки [офисного редактора LibreOffice](https://www.libreoffice.org/donate/dl/win-x86_64/6.4.2/ru/LibreOffice_6.4.2_Win_x64.msi):

|`msiexec /i LibreOffice_6.4.2_Win_x64.msi`| `/passive`| `/norestart` | `/le libreoffice-install-log.txt`|
|:--------------------------:|:------------:|:-------------:|:---------------------:|
|установка|автоматический режим|без перезагрузки|журнал установки(все сообщения) в libreoffice-install-log.txt|

Скрипт для установки [расширения LibreOffice](http://download.documentfoundation.org/libreoffice/stable/6.4.2/win/x86_64/LibreOffice_6.4.2_Win_x64_helppack_ru.msi):

|`msiexec /i LibreOffice_6.4.2_Win_x64_helppack_ru.msi` | `/passive` | `/forcerestart` | `/le+ libreoffice-install-log.txt`|
|:--------------------------:|:--------------------:|:------------------------:|:-----------------------------------------:|
|установка|автоматический режим|перезагрузка|журнал установки(все сообщения) в libreoffice-install-log.txt(дописать в ранее созданный файл)|

5. Скрипт для установки [текстового редактора Notepad++](https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.5/npp.7.8.5.Installer.exe):

|`npp.7.8.5.Installer.exe` | `/S`|
|:--------------:|:-------------:|
|установка|автоматически|

6. Установка ПО для запуска программ на Java [JRE 8](https://www.oracle.com/java/technologies/javase-jre8-downloads.html#license-lightbox) для Windows x64:

|`jre-8u251-windows-x64.exe` | `INSTALLCFG=%~dp0\jre-config.txt` | `/L jre-log.txt`|
|:-----------------------:|:------------------------------:|:---------------------:|
|установщик|путь к конфигурационному файлу|лог-файл с результатами установки jre-log.txt|

[Конфигурационный файл](https://github.com/fpiikt/os-1-msinstall-T-Sh/blob/master/jre-config.txt):

|INSTALL_SILENT|INSTALLDIR|WEB_ANALYTICS|WEB_JAVA|
|:------------:|:--------:|:-----------:|:------:|
|Enable|C:\Java\JRE|Disable|Enable|
|автономный режим|каталог для установки java: "C:\Java\JRE"|отключить отправку веб-аналитики|разрешить запуск веб-приложений Java в браузере|

Также приложены лог-файлы, полученные при установке.
