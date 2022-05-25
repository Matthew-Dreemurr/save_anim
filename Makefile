SHELL=/bin/bash

all : save

sauce : save

save :
	git add . ; git commit -am "TAMER"; git push &
	IFS=""; \
	ANIM=(">  " " > " "  >" "   "); \
	while true; do \
		for ((i = 0; i < $${#ANIM[@]}; i++)); do \
			printf "\e[36;1m%s\e[0G\e[0m" $${ANIM[i]}; \
			sleep 0.05; \
			echo  PID : $$!; \
			if [[ -z $$(ps -o pid | grep "$$!") ]] ;then exit ;fi \
		;done \
	;done

