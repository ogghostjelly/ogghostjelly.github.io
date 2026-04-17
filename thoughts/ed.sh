# Bash script to edit `thoughts.txt` quickly. (uses helix editor)
# I have an alias to it in .bashrc
cd $(dirname "$0")

file="./thoughts.txt"
echo -e "\n\n$(cat "$file")" > "$file"
hx "$file"
git commit -m "Updated thoughts.txt" "$file"