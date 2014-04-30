echo Creating reFocus Build Folder
rm -R -f BUILD/
mkdir BUILD
mkdir BUILD/skin.refocus/

echo Building Skin Directory...
cp -R 720p BUILD/skin.refocus/720p
cp -R backgrounds BUILD/skin.refocus/backgrounds
cp -R colors BUILD/skin.refocus/colors
cp -R fonts BUILD/skin.refocus/fonts
cp -R language BUILD/skin.refocus/language
cp -R language/Czech BUILD/skin.refocus/language/Czech
cp -R language/Danish BUILD/skin.refocus/language/Danish
cp -R language/Dutch BUILD/skin.refocus/language/Dutch
cp -R language/English BUILD/skin.refocus/language/English
cp -R language/Finnish BUILD/skin.refocus/language/Finnish
cp -R language/French BUILD/skin.refocus/language/French
cp -R language/Galician BUILD/skin.refocus/language/Galician
cp -R language/Italian BUILD/skin.refocus/language/Italian
cp -R language/Korean BUILD/skin.refocus/language/Korean
cp -R language/Polish BUILD/skin.refocus/language/Polish
cp -R language/Portuguese (Brazil) BUILD/skin.refocus/language/Portuguese (Brazil)
cp -R language/Romanian BUILD/skin.refocus/language/Romanian
cp -R language/Swedish BUILD/skin.refocus/language/Swedish
cp -R playlists BUILD/skin.refocus/playlists
cp -R sounds BUILD/skin.refocus/sounds
cp *.xml BUILD/skin.refocus/
cp *.txt BUILD/skin.refocus/
cp *.png BUILD/skin.refocus/
cp *.jpg BUILD/skin.refocus/
cp *.md BUILD/skin.refocus/

echo Creating XBT File...
./TexturePacker -input media/ -output media/Textures.xbt
mkdir BUILD/skin.refocus/media/
cp media/*.xbt BUILD/skin.refocus/media/

rm media/*.xbt

echo Build Complete - Scroll Up to check for errors.
