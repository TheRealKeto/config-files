# config-files (.zshrc)
# Configuration file for zsh

# Setup project's installation path
# Makes it easier to access projects
export PROJECTS="/var/mobile/Projects"

# Specify youtube-dl and Procursus installation paths
# Makes it easier to access these projects directly
export PRO="$PROJECTS/Procursus"
export YTDL="$PROJECTS/youtube-dl"

# Add syntax highlighting support for zsh
# This is done with zsh-syntax-highlighting
source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
