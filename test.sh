#!/bin/bash
IFS=
ANIM=(
"| \\/     |"
"|        |"
"|        |"
"|        |"

"|        |"
"| \\/     |"
"|        |"
"|        |"

"|        |"
"|        |"
"| \\/     |"
"|        |"

"|        |"
"| ||     |"
"| \\/     |"
"|        |"

"| ||     |"
"| ||     |"
"| \\/     |"
"|        |"

"| ||     |"
"| ||     |"
"| \\/     |"
"| S      |"

"| ||     |"
"| ||     |"
"| \\/     |"
"| SA     |"

"| ||     |"
"| ||     |"
"| \\/     |"
"| SAV    |"

"| ||     |"
"| ||     |"
"| \\/     |"
"| SAVI   |"

"| ||     |"
"| ||     |"
"| \\/     |"
"| SAVIN  |"

"| ||     |"
"| ||     |"
"| \\/     |"
"| SAVING |"

)

(git add . ; git commit -am "TAMER"; git push) &
PID=$!

# while true; do
# 	for ((i = 0; i < ${#ANIM[@]}; i++)); do
# 		printf "\e[36;1m%s\e[5A\e[0G\e[0m" ${ANIM[i]}
# 		sleep 0.05
# 		if [[ -z $(ps -o pid | grep $PID) ]]
# 		then
# 			exit
# 		fi
# 	done
# done
# printf "\n\n\n\n\n\n"

while true; do
	for ((i = 0; i < ${#ANIM[@]}; i = i )); do
		printf "\e[36;1m"
		for ((j = 0; j < 4; j++)); do
			printf "%s\n" ${ANIM[i]}
			let "i++"
		done
		printf "\e[4A\e[0G\e[0m"
		sleep 0.040
		if [[ -z $(ps -o pid | grep "$CPID") ]]; then exit; fi
	done
done
