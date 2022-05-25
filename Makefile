SHELL=/bin/bash

all : save

sauce : save

save :
	@-git add . ; git commit -am "TAMER"; \
	git push &\
	CPID=$$! ;\
	IFS=""; \
	ANIM=( \
	"| \\/     |"\
	"|        |"\
	"|        |"\
	"|        |"\
	\
	"|        |"\
	"| \\/     |"\
	"|        |"\
	"|        |"\
	\
	"|        |"\
	"|        |"\
	"| \\/     |"\
	"|        |"\
	\
	"|        |"\
	"| ||     |"\
	"| \\/     |"\
	"|        |"\
	\
	"| ||     |"\
	"| ||     |"\
	"| \\/     |"\
	"|        |"\
	\
	"| ||     |"\
	"| ||     |"\
	"| \\/     |"\
	"| S      |"\
	\
	"| ||     |"\
	"| ||     |"\
	"| \\/     |"\
	"| SA     |"\
	\
	"| ||     |"\
	"| ||     |"\
	"| \\/     |"\
	"| SAV    |"\
	\
	"| ||     |"\
	"| ||     |"\
	"| \\/     |"\
	"| SAVI   |"\
	\
	"| ||     |"\
	"| ||     |"\
	"| \\/     |"\
	"| SAVIN  |"\
	\
	"| ||     |"\
	"| ||     |"\
	"| \\/     |" \
	"| SAVING |"\
	" \
	) ;\
	while true; do \
		for ((i = 0; i < $${#ANIM[@]}; i+=0)); do \
			printf "\e[36;1m"; \
			for ((j = 0; j < 5; j++)); do \
				printf "%s\n" $${ANIM[i]}; \
				let "i++";\
			done \
			printf "\e[5A;\e[0G\e[0m" ; sleep 0.5; \
			if [[ -z $$(ps -o pid | grep "$$CPID") ]] ;then exit ;fi \
		;done \
	;done
