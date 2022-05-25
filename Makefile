SHELL=/bin/bash

all : save

sauce : save

save :
	IFS=""; \
	ANIM=(">  " " > " "  >" "   "); \
	(git add . ; git commit -am "TAMER"; git push &); PID=$$!; \
	while true; do \
		for ((i = 0; i < $${#ANIM[@]}; i++)); do \
			printf "\e[36;1m%s\e[0G\e[0m" $${ANIM[i]}; \
			sleep 0.05; \
			if [[ -z $$(ps -o pid | grep $PID) ]] ;then exit ;fi \
		;done \
	;done

