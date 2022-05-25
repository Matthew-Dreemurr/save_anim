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


for u in {1..5}; do
	for ((i = 0; i < ${#ANIM[@]}; i++)); do
		printf "\e[36;1m%s\e[5A\e[0G\e[0m" ${ANIM[i]}
		sleep 0.025

		if [[ -z $(ps | grep $PID) ]]
		then
			exit
		fi


	done
done
printf "\n\n\n\n\n\n"
