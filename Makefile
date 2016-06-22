
zsh: init_zsh.sh
	./init_zsh.sh ./

bash: ./home/bash*
	@for f in $^; do \
		fname=`basename $$f`; \
		[[ -f ~/.$$fname ]] && cp -f $$f ~/.$$fname.orig; \
		cp $$f ~/.$$fname; \
	done

.PHONY: zsh bash
