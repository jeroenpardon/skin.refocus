@echo off

START /B /WAIT TexturePacker -dupecheck -input D:\XBMC\addons\skin.refocus\media\ -output media\Textures.xbt

echo Textures.xbt build complete - Scroll Up to check for errors.
pause