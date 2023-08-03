# Load the 'init.sh'.
DISABLE_AUTO_UPDATE=true
source ~/.config/zshrc/shell.sh
FILES_STR=$(find ~/.config/zshrc -name '*.sh' -not -name 'shell.sh')
# # Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))
for FILE in $FILES; do
     source $FILE
done
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
