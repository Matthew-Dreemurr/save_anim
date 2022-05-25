#!/bin/bash
DONE=0
IFS=
ANIM=(
	"
| \\/     |
|        |
|        |
|        |
"
	"
|        |
| \\/     |
|        |
|        |
"
	"
|        |
|        |
| \\/     |
|        |
"
	"
|        |
| ||     |
| \\/     |
|        |
"
	"
| ||     |
| ||     |
| \\/     |
|        |
"

	"
| ||     |
| ||     |
| \\/     |
| S      |
"
	"
| ||     |
| ||     |
| \\/     |
| SA     |
"
	"
| ||     |
| ||     |
| \\/     |
| SAV    |
"
	"
| ||     |
| ||     |
| \\/     |
| SAVI   |
"
	"
| ||     |
| ||     |
| \\/     |
| SAVIN  |
"
	"
| ||     |
| ||     |
| \\/     |
| SAVING |
"
)

git add . ; git commit -am "TAMER"; git push &
PID=$$

echo PID : $PID


while true; do
	for ((i = 0; i < ${#ANIM[@]}; i++)); do
		printf "\e[36;1m%s\e[5A\e[0G\e[0m" ${ANIM[i]}
		sleep 0.025

		RET=$(jobs -p | grep $PID)
		echo RET : "$RET"
		if [[ -z "$RET" ]]
		then
			echo FINISHED
		fi


	done
done
printf "\n\n\n\n\n\n"
