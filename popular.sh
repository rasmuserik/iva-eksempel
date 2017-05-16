for filnavn in stat/*.data
do  
  echo $filnavn
  cat $filnavn | 
    sort | 
    uniq -c | 
    sort -n | 
    tail -n 100 > $filnavn.lst 
done
