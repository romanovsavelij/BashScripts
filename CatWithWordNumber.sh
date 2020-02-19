wordCount=0
while read -r line; do 
	for word in $line; do
		echo $wordCount: $word
		((wordCount++))
	done
done < $1