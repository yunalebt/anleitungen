@echo off
cls
echo Los geht es. Druecke eine Taste.
pause >nul
cd platform-tools
::Verbindung generieren
adb logcat -c
echo ....................Hole DCIM....................
adb pull "/storage/emulated/0/DCIM/" ../
adb shell rm -rf /storage/emulated/0/DCIM/
adb shell mkdir /storage/emulated/0/DCIM/
echo ...ok.
echo ....................Hole Pictures....................
adb pull "/storage/emulated/0/Pictures/" ../
adb shell rm -rf /storage/emulated/0/Pictures/
adb shell mkdir /storage/emulated/0/Pictures/
echo ...ok.
echo ....................Hole Documents....................
adb pull "/storage/emulated/0/Documents/" ../
adb shell rm -rf /storage/emulated/0/Documents/
adb shell mkdir /storage/emulated/0/Documents/
echo ...ok.
echo ....................Hole Music....................
adb pull "/storage/emulated/0/Music/" ../
adb shell rm -rf /storage/emulated/0/Music/
adb shell mkdir /storage/emulated/0/Music/
echo ...ok.
echo ....................Hole Download....................
adb pull "/storage/emulated/0/Download/" ../
adb shell rm -rf /storage/emulated/0/Download/
adb shell mkdir /storage/emulated/0/Download/
echo ...ok.
echo ....................Hole Movies....................
adb pull "/storage/emulated/0/Movies/" ../
adb shell rm -rf /storage/emulated/0/Movies/
adb shell mkdir /storage/emulated/0/Movies/
echo ...ok.
echo ....................Android: Panorama-Sessions loeschen....................
adb shell rm -rf /storage/emulated/0/Android/data/com.google.android.GoogleCamera/files/panorama_sessions
echo ...ok.
echo ....................Syslogs loeschen....................
adb logcat -c
echo ...ok.
::Verbindung beenden
adb kill-server
cd ..
echo Fertig.
pause >nul