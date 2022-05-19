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

for u in {1..2}; do
	for ((i = 0; i < ${#ANIM[@]}; i++)); do
		printf "\e[36;1m%s\e[5A\e[0G\e[0m" ${ANIM[i]}
		sleep 0.025
	done
done
printf "\n\n\n\n\n\n"

git add . ; git commit -am "-"; git push 2>&1 >/dev/null


for u in {1..2}; do
	for ((i = 0; i < ${#ANIM[@]}; i++)); do
		printf "\e[36;1m%s\e[5A\e[0G\e[0m" ${ANIM[i]}
		sleep 0.025
	done
done
printf "\n\n\n\n\n\n"
