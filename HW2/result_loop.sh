printf "" > results.csv
for i in results/*.txt
do
    tmp="${i##*-}"
    printf "${tmp%.*}," >> results.csv 
    trec_eval/trec_eval LA-only.trec8-401.450.minus416-423-437-444-447.txt $i -m num_ret -m P.1000 -m num_rel_ret  | awk -F '\t' '{print $3}' | tr '\n' ',' >> results.csv
    printf "\n" >> results.csv
done