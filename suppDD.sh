mkdir ./tmp
cd ./tmp

test=$(df -h | grep C:/ | awk '{print $5}')
test=${test/G/}
echo $test

i=1
while [ $i -le $test ]
do
   dd if=/dev/urandom of=./file_$i.txt bs=1M count=1000
   i=$((i + 1))
done

# for (( i=1; i<=100000000; i++ ))
# do  
#     dd if=/dev/urandom of=./file_$i.txt bs=1M count=5000
    
# done

#!/bin/bash

# # Crée un fichier de 1 Go avec des données aléatoires
# dd if=/dev/urandom of=fichier_volumineux.txt bs=1M count=5000