#!/usr/bin/env bash
WORDS1=(schnäbi schnuuderi blabber stai schlabber käller schnägge furz kack huffe stingg hoode furzkopf schnuuder arsch angge schnaabel drottwaaramsle fümflyyber gnulleri maitli käpseli sagg schwööbli schyssdrägg fleischlawine pfludderi boodesuuri)
WORDS2=(schlyffer kasper kätscher gwaggli suuri pfluume schlägger drambbler fürzler kaib bolle molch bohne kopf burscht wurscht molch dante joodler maitli bueb schmegger ladäärnli spalter laddäärne schugger rytter schugger föni füüdle gaiferi)
case "$OSTYPE" in
  darwin*|bsd*)  R1=$(jot -r 1 1 ${#WORDS1[@]}); R2=$(jot -r 1 1 ${#WORDS2[@]});;
  linux*)        R1=$(shuf -i 1-${#WORDS1[@]} -n 1); R2=$(shuf -i 1-${#WORDS2[@]} -n 1) ;;
  *)             echo "unknown: $OSTYPE" ;;
esac
let R1-=1
let R2-=1
echo ${WORDS1[${R1}]}${WORDS2[${R2}]}
