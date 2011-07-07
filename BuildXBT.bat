@echo off
ECHO ------------------------------
echo Creating refocus Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Creating XBT Files...
CALL TexturePacker.bat

ECHO ------------------------------
ECHO Copying XBT Files...
xcopy "media\*.xbt" "BUILD\skin.refocus\media\" /Q /I /Y

ECHO ------------------------------
ECHO Cleaning Up...
del "mediatextures.xbt"