# Load the 'init.sh'.
source ~/.config/zshrc/shell.sh
FILES_STR=$(find ~/.config/zshrc -name '*.sh' -not -name 'shell.sh')
# # Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))
for FILE in $FILES; do
     source $FILE
done
