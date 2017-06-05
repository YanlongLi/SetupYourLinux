
home: init_home.sh
	./init_home.sh

zsh: init_zsh.sh
	./init_zsh.sh

bash: ./init_bash.sh
	./init_bash.sh

.PHONY: home zsh bash
