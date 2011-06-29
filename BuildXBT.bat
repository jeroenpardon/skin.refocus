@echo off
ECHO ------------------------------
echo Creating reFocus Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Extracting Revision Number
FOR /F "Tokens=2* Delims=]" %%R IN ('FIND /v /n "&_&_&_&" ".svn\entries" ^| FIND "[11]"') DO SET Revision=%%R

ECHO ------------------------------
ECHO Getting Version
FOR /F "Tokens=3 Delims=><" %%V IN ('FIND "<version>" "description.xml"') DO SET Version=%%V

ECHO ------------------------------
ECHO Getting Skin Name
FOR /F "Tokens=3 Delims=><" %%V IN ('FIND "<title>" "description.xml"') DO SET SkinName=%%V

ECHO ------------------------------
ECHO Creating XPR Files...
CALL media\TexturePacker.bat

ECHO ------------------------------
ECHO Copying XBT Files...
ECHO START /B /WAIT media/TexturePacker -input media\ -output media\Textures.xbt
xcopy "media\*.xbt" "BUILD\skin.refocus\media\" /Q /I /Y

REM ECHO ------------------------------
REM ECHO Cleaning Up...
REM del "media\*.xbt"

REM ECHO ------------------------------
REM ECHO Copying Image Files...
REM xcopy "media\*.*" "BUILD\skin.refocus\media\" /E /Q /I /Y

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "720p" "BUILD\skin.refocus\720p" /E /Q /I /Y
xcopy "1080p" "BUILD\skin.refocus\1080p" /E /Q /I /Y
xcopy "colors" "BUILD\skin.refocus\colors" /E /Q /I /Y
xcopy "backgrounds" "BUILD\skin.refocus\backgrounds" /E /Q /I /Y
xcopy "fonts" "BUILD\skin.refocus\fonts" /E /Q /I /Y
xcopy "flags" "BUILD\skin.refocus\flags" /E /Q /I /Y
xcopy "sounds" "BUILD\skin.refocus\sounds" /E /Q /I /Y
xcopy "scripts" "BUILD\skin.refocus\scripts" /E /Q /I /Y
xcopy "intro" "BUILD\skin.refocus\intro" /E /Q /I /Y
xcopy "language" "BUILD\skin.refocus\language" /E /Q /I /Y
xcopy "language\English" "BUILD\skin.refocus\language\English" /E /Q /I /Y
xcopy "language\Spanish" "BUILD\skin.refocus\language\Spanish" /E /Q /I /Y
xcopy "language\Polish" "BUILD\skin.refocus\language\Polish" /E /Q /I /Y
xcopy "language\German" "BUILD\skin.refocus\language\German" /E /Q /I /Y
xcopy "language\Dutch" "BUILD\skin.refocus\language\Dutch" /E /Q /I /Y
xcopy "language\Korean" "BUILD\skin.refocus\language\Korean" /E /Q /I /Y
xcopy "language\Romanian" "BUILD\skin.refocus\language\Romanian" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\skin.refocus\language\Swedish" /E /Q /I /Y
xcopy "language\Russian" "BUILD\skin.refocus\language\Russian" /E /Q /I /Y
xcopy "*.xml" "BUILD\skin.refocus\" /Q /I /Y
xcopy "*.txt" "BUILD\skin.refocus\" /Q /I /Y
xcopy "*.png" "BUILD\skin.refocus\" /Q /I /Y

ECHO ------------------------------
ECHO Making Revision.xml Include
ECHO ^<!-- refocus skin revision: %Revision% - built with build.bat version 1.0 --^>> "BUILD\skin.refocus\720p\Revision.xml"
ECHO ^<includes^>>> "BUILD\skin.xperience\720p\Revision.xml"
ECHO     ^<include name="Revision"^>>> "BUILD\skin.refocus\720p\Revision.xml"
ECHO         ^<label^>%SkinName% Version: r%Revision% ^(Compiled : %date%^)^</label^>>> "BUILD\skin.refocus\720p\Revision.xml"
ECHO     ^</include^>>> "BUILD\skin.refocus\720p\Revision.xml"
ECHO ^</includes^>>> "BUILD\skin.refocus\720p\Revision.xml"

copy *.txt "BUILD"

ECHO ------------------------------
ECHO Removing SVN directories from build
FOR /R BUILD %%d IN (SVN) DO @RD /S /Q "%%d" 2>NUL

echo Build Complete - Scroll Up to check for errors.
echo Final build is located in the BUILD directory
echo Thanks for using reFocus
pause
