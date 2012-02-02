@echo off
ECHO ------------------------------
echo Creating reFocus Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "720p" "BUILD\skin.refocus.release\720p" /E /Q /I /Y
xcopy "1080p" "BUILD\skin.refocus.release\1080p" /E /Q /I /Y
xcopy "colors" "BUILD\skin.refocus.release\colors" /E /Q /I /Y
xcopy "fonts" "BUILD\skin.refocus.release\fonts" /E /Q /I /Y
xcopy "intro" "BUILD\skin.refocus.release\intro" /E /Q /I /Y
xcopy "language" "BUILD\skin.refocus.release\language" /E /Q /I /Y
xcopy "language\Dutch" "BUILD\skin.refocus.release\language\Dutch" /E /Q /I /Y
xcopy "language\English" "BUILD\skin.refocus.release\language\English" /E /Q /I /Y
xcopy "language\Finnish" "BUILD\skin.refocus.release\language\Finnish" /E /Q /I /Y
xcopy "language\French" "BUILD\skin.refocus.release\language\French" /E /Q /I /Y
xcopy "language\German" "BUILD\skin.refocus.release\language\German" /E /Q /I /Y
xcopy "language\Italian" "BUILD\skin.refocus.release\language\Italian" /E /Q /I /Y
xcopy "language\Korean" "BUILD\skin.refocus.release\language\Korean" /E /Q /I /Y
xcopy "language\Norwegian" "BUILD\skin.refocus.release\language\Norwegian" /E /Q /I /Y
xcopy "language\Polish" "BUILD\skin.refocus.release\language\Polish" /E /Q /I /Y
xcopy "language\Romanian" "BUILD\skin.refocus.release\language\Romanian" /E /Q /I /Y
xcopy "language\Russian" "BUILD\skin.refocus.release\language\Russian" /E /Q /I /Y
xcopy "language\Spanish" "BUILD\skin.refocus.release\language\Spanish" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\skin.refocus.release\language\Swedish" /E /Q /I /Y
xcopy "playlists" "BUILD\skin.refocus.release\playlists" /E /Q /I /Y
xcopy "sounds" "BUILD\skin.refocus.release\sounds" /E /Q /I /Y
xcopy "*.xml" "BUILD\skin.refocus.release\" /Q /I /Y
xcopy "*.txt" "BUILD\skin.refocus.release\" /Q /I /Y
xcopy "*.png" "BUILD\skin.refocus.release\" /Q /I /Y

ECHO ------------------------------
ECHO Creating XBT File...
START /B /WAIT TexturePacker.exe -input media\ -output media\Textures.xbt
xcopy "media\*.xbt" "BUILD\skin.refocus.release\media\" /Q /I /Y

REM ECHO ------------------------------
REM ECHO Cleaning Up...
REM del "media\*.xbt"

REM ECHO ------------------------------
REM ECHO Copying Image Files...
REM xcopy "media\*.*" "BUILD\skin.refocus.release\media\" /E /Q /I /Y

echo Build Complete - Scroll Up to check for errors.
pause