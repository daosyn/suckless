all:
	git -C src/dwm apply ~/suckless/patch/dwm-*
	sudo make -C src/dwm install
	git -C src/st apply ~/suckless/patch/st-*
	sudo make -C src/st install
clean:
	make -C src/dwm clean
	make -C src/st clean
	rm -f src/*/config.h
	git submodule foreach git reset --hard
