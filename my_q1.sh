# first question:
awk 'END {print "Total lines:", NR}' aliceinwonderland.txt

#second question:
awk '{for (i=1; i<=NF; i++) if ($i ~ /Alice/) count++} END {print "Alice appears:", count, "times"}' aliceinwonderland.txt

#third question:
awk '{for (i=1; i<=NF; i++) words[tolower($i)]++} END {print "Unique words:", length(words)}' aliceinwonderland.txt

#fourth question:
awk '{
    for (i=1; i<=NF; i++) {
        word = tolower($i)  
        gsub(/[^a-z]/, "", word)  
        if (word != "") words[word]++  
    }
} 
END {
    for (w in words) print words[w], w
}' aliceinwonderland.txt | sort -nr | head -5

#fifth question:
awk '{
    for (i=1; i<=NF; i++) {
        word = tolower($i)  # Convert word to lowercase
        gsub(/[^a-z]/, "", word)  # Remove all non-letter characters
        if (word != "") {  # Ignore empty words
            total_length += length(word)  # Sum word lengths
            word_count++  # Count number of words
        }
    }
} 
END {
    if (word_count > 0) 
        print "Average word length:", total_length / word_count
    else 
        print "No words found."
}' aliceinwonderland.txt


