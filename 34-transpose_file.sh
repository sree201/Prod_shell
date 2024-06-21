cat transpose.sh
#!/bin/bash
input_file="$1"
num_cols=$(head -1 "$input_file" | wc -w)
for i in $(seq 1 "$num_cols"); do
echo $(cut -d ' ' -f "$i" "$input_file")
done
cat data
name age
NTR 8
ANR 7
MEGA 6