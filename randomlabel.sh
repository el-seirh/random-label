#!/usr/bin/env bash

USECAMELCASE=$1
APPENDNUMBERS=$2
APPENDSPECIALCHARS=$3

WORDS1=(schnäbi schnuuderi blabber stai schlabber käller schnägge furz kack huffe stingg hoode furzkopf schnuuder arsch angge schnaabel drottwaaramsle fümflyyber gnulleri maitli käpseli sagg schwööbli schyssdrägg fleischlawine pfludderi boodesuuri)

WORDS2=(schlyffer kasper kätscher gwaggli suuri pfluume schlägger drambbler fürzler kaib bolle molch bohne kopf burscht wurscht molch dante joodler maitli bueb schmegger ladäärnli spalter laddäärne schugger rytter schugger föni füüdle gaiferi)

SPECIALCHARS=(";" "+" "-" "," "/" "|" "_" ":" "?" ")" "(")

case "$OSTYPE" in
  darwin*|bsd*)  R1=$(jot -r 1 1 ${#WORDS1[@]}); R2=$(jot -r 1 1 ${#WORDS2[@]}); R3=$(jot -r 1 1 ${#SPECIALCHARS[@]});;
  linux*)        R1=$(shuf -i 1-${#WORDS1[@]} -n 1); R2=$(shuf -i 1-${#WORDS2[@]} -n 1); R3=$(shuf -i 1-${#SPECIALCHARS[@]} -n 1);;
  *)             echo "unknown: $OSTYPE" ;;
esac

let R1-=1
let R2-=1
let R3-=1

CHOSENCHAR=${SPECIALCHARS[${R3}]}
if [[ $APPENDSPECIALCHARS -ne "1" ]]
then
    CHOSENCHAR=''
fi

echo ${WORDS1[${R1}]}${WORDS2[${R2}]}$CHOSENCHAR
