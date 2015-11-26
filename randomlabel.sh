#!/usr/bin/env bash
WORDS1=(schnäbi schnuderi plapper stai schlabber chäller schnägge furz kack huffe stink hoode furzkopf schnudder arsch angge schnaabel drottwaaramsle fümflyyber gnulleri maitli käpseli sagg schwööbli schyssdrägg fleischlawine pfludderi)
WORDS2=(schliffer chasper chätscher gwaggli suuri pfluume schlägger trambbler fürzler chaib bolle molch bohne kopf burscht wurscht molch tante joodler mäitli bueb schmegger ladäärnli spalter laddärne schugger ryter schugger föni füüdle gaiferi)
echo ${WORDS1[$(( ((RANDOM<<15)|RANDOM) % ${#WORDS1[@]} + 1 ))]}${WORDS2[$(( ((RANDOM<<15)|RANDOM) % ${#WORDS2[@]} + 1 ))]}
