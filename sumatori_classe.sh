#ESCRIURE UN SCRIPT EN BASH
#QUE CALCULI LA SUMA DELS 10 PRIMERS
#NUMEROS NATURALS (DEL 1 AL 10)
ARRIBAR=${1}
NUMERO=1
TOTAL=0
while [[ NUMERO -le ARRIBAR ]]
do
    #ANAM FENT ELS CALCULS
    TOTAL=$((TOTAL+NUMERO))
    NUMERO=$((NUMERO+1))
done

echo "el sumatori de $ARRIBAR val $TOTAL"
