# config-files (.zshrc)
# Configuration file for zsh

# Setup project's installation path
# Makes it easier to access projects
export PROJECTS="/var/mobile/Projects"

# Specify installation paths for youtube-dl and Procursus
# Makes it easier to access these projects directly
export PRO="$PROJECTS/Procursus"
export YTDL="$PROJECTS/youtube-dl"

# Specify default build Procursus variables
export MEMO_TARGET="iphoneos-arm64"
export MACOSX_SYSROOT="/usr/share/SDKs/MacOSX11.3.sdk"

# Function to easily clone Github projects
function clone {
    # Projects can be cloned to a different path
    if [ -n "$3" ]; then
        git clone --recursive "git@github.com:$1/$2.git" $3; cd $3
    # Otherwise, projects are simply cloned
    # within the current working directory..
    else
        git clone --recursive "git@github.com:$1/$2.git"; cd "$PWD/$2"
    fi
}

# Add syntax highlighting support for zsh
# This is done with zsh-syntax-highlighting
source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
