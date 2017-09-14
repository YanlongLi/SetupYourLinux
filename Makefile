

OPENBOX_DIR := ~/.config/openbox/

home: init_home.sh
	./init_home.sh

zsh: init_zsh.sh
	./init_zsh.sh

bash: ./init_bash.sh
	./init_bash.sh

openbox: ${OPENBOX_DIR}
	cp -r ./home/config/openbox/* ${OPENBOX_DIR}

${OPENBOX_DIR}:
	mkdir -p ${OPENBOX_DIR}

llpp: ./home/config/llpp.conf
	cp -f ./home/config/llpp.conf ~/.config/llpp.conf

.PHONY: home zsh bash openbox llpp
