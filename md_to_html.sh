for ((i=1; i < 33; i++))
do
    if (( i < 10 ))
        then
        pandoc -t slidy --self-contained ticket0$i.md -o ticket0$i.html 
        fi
    else
        then
        pandoc -t slidy --self-contained ticket$i.md -o ticket$i.html
        fi
done
