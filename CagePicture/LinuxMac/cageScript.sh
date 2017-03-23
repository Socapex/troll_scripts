TARGETFOLDER=/BLABLABLA/PolyTroll/CagePicture/Linux/
CAGE=nicolas-cage
EXT=.jpg
for(( i = 0; i < 100000000000; i++)); do
	cp "$TARGETFOLDER$CAGE$EXT" "$TARGETFOLDER$CAGE-$i$EXT"
	done
