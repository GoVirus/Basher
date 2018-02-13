for i in **; do 
  [[ -f "$i" ]] && 
  [[ md5sum.txt != "$i" ]] && 
  md5sum "$i" >> md5sum.txt
done