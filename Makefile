date1:= `date +%Y%m%d`

all sfd-dist ttf:
	cd src;	cp ../AUTHORS ../scripts/apply_featurefile.py ../scripts/auto_test.py  ../generate*.pe ../COPYRIGHT ../OFL.txt ../README.md .;	 "$(MAKE)" "$@";		 rm -f generate* *.py AUTHORS COPYRIGHT OFL.txt README.md;		cd ..;

ttf-dist:
	mkdir lohit-devanagari-ttf-$(date1)
	cp COPYRIGHT OFL.txt AUTHORS README.md */*.ttf lohit-devanagari-ttf-$(date1)/
	tar -cf lohit-devanagari-ttf-$(date1).tar lohit-devanagari-ttf-$(date1)/
	gzip lohit-devanagari-ttf-$(date1).tar
	rm -rf lohit-devanagari-ttf-$(date1)

clean:
	cd $${font}; make clean; cd ..;

