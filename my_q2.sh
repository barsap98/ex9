#first question:
sed -n '/\b\(Sherlock\|Holmes\)\b/p' sherlockholmes.txt | wc -l

#seond question:
sed -n 's/\b\(Sherlock\|Holmes\)\b/&\n/gp' sherlockholmes.txt | wc -l

#third question:
sed 's/^/Hello: /' sherlockholmes.txt

#forth question:
sed -E 's/\b[A-Z][a-z]+ [A-Z][a-z]+\b/Bar/g' sherlockholmes.txt

#fifth question:
sed -E 's/\(/[/g; s/\)/]/g' sherlockholmes.txt

