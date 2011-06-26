@echo off
ECHO ------------------------------
ECHO Creating reFocus Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Creating XPR Files...
CALL media\XBMCTex.bat

ECHO ------------------------------
ECHO Copying XPR Files...
xcopy *.xpr "BUILD\skin.refocus\media\" /Q /I /Y

ECHO ------------------------------
ECHO Cleaning Up...
del *.xpr

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "720p" "BUILD\\skin.refocus\720p" /E /Q /I /Y
xcopy "fonts" "BUILD\\skin.refocus\fonts" /E /Q /I /Y
xcopy "colors" "BUILD\\skin.refocus\colors" /E /Q /I /Y
xcopy "sounds" "BUILD\\skin.refocus\sounds" /E /Q /I /Y
xcopy "Backgrounds" "BUILD\\skin.refocus\Backgrounds" /E /Q /I /Y
xcopy "Flags" "BUILD\\skin.refocus\Flags" /E /Q /I /Y
xcopy "language\English" "BUILD\skin.refocus\language\English" /E /Q /I /Y
xcopy "language\Spanish" "BUILD\skin.refocus\language\Spanish" /E /Q /I /Y
xcopy "language\Polish" "BUILD\skin.refocus\language\Polish" /E /Q /I /Y
xcopy "language\German" "BUILD\skin.refocus\language\German" /E /Q /I /Y
xcopy "language\Korean" "BUILD\skin.refocus\language\Korean" /E /Q /I /Y
xcopy "language\Dutch" "BUILD\skin.refocus\language\Dutch" /E /Q /I /Y
xcopy "language\Romanian" "BUILD\skin.refocus\language\Romanian" /E /Q /I /Y
xcopy "*.xml" "BUILD\\skin.refocus\" /Q /I /Y
xcopy "*.txt" "BUILD\\skin.refocus\" /Q /I /Y
xcopy "*.png" "BUILD\\skin.refocus\" /Q /I /Y


ECHO ------------------------------
ECHO Removing SVN directories from build
FOR /R BUILD %%d IN (.SVN) DO @RD /S /Q "%%d" 2>NUL

ECHO Build Complete - Scroll Up to check for errors.
ECHO Final build is located in the BUILD directory
ECHO Thank you for using reFocus

pause
