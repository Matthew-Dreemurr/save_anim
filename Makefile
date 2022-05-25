SHELL=/bin/bash

all : save

sauce : save

save :
	@-git add . ; git commit -am "TAMER";
	git push &\
	CPID=$$! ;\
	IFS=""; \
	ANIM=( \
		" \
	| \\/     | \
	|        | \
	|        | \
	|        | \
	" \
		" \
	|        | \
	| \\/     | \
	|        | \
	|        | \
	" \
		" \
	|        | \
	|        | \
	| \\/     | \
	|        | \
	" \
		" \
	|        | \
	| ||     | \
	| \\/     | \
	|        | \
	" \
		" \
	| ||     | \
	| ||     | \
	| \\/     | \
	|        | \
	" \
	 \
		" \
	| ||     | \
	| ||     | \
	| \\/     | \
	| S      | \
	" \
		" \
	| ||     | \
	| ||     | \
	| \\/     | \
	| SA     | \
	" \
		" \
	| ||     | \
	| ||     | \
	| \\/     | \
	| SAV    | \
	" \
		" \
	| ||     | \
	| ||     | \
	| \\/     | \
	| SAVI   | \
	" \
		" \
	| ||     | \
	| ||     | \
	| \\/     | \
	| SAVIN  | \
	" \
		" \
	| ||     | \
	| ||     | \
	| \\/     | \
	| SAVING | \
	" \
	) ;\
	while true; do \
		for ((i = 0; i < $${#ANIM[@]}; i++)); do \
			printf "\e[36;1m%s\e[0G\e[0m" $${ANIM[i]}; \
			sleep 0.5; \
			if [[ -z $$(ps -o pid | grep "$$CPID") ]] ;then exit ;fi \
		;done \
	;done
