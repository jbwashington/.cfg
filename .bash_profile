export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# set colors to match iterm2 colors
export TERM=xterm-256color
alias ls='ls -GFh'
alias ll='ls -al'
alias song='instantmusic'

# personal bitnami stack
# alias portfolio='ssh -i /Users/jbwashington/.ssh/.aws-keys/jameswashington.me_wordpress.pem bitnami@52.91.73.11'

# SECURE SHELL UP IN THIS THANG
# =============================
alias 3pfitness='ssh -i /Users/jbwashington/.ssh/.aws-keys/bitnami-business.pem bitnami@23.22.70.67'
# alias tehbailey='ssh -i /Users/jbwashington/.ssh/.aws-keys/3pfitness.pem bitnami@54.84.215.211'
# alias gpatech='ssh -i /Users/jbwashington/.ssh/.aws-keys/gpatech-wp-multisite.pem bitnami@23.236.61.25'
alias me='ssh -i /Users/jbwashington/.ssh/.aws-keys/jameswashington.pem bitnami@23.22.69.95'
# ubuntu dell optiplex 960 at work
# alias work-pc='ssh ...'
# raspberry pi
# alias rpi='ssh ...'

# get to my dev files quick
alias cce='cd ~/SYNC/dev/servicedev2; ls'


# OTHER BASH ALIASES
# ==================
function play {
    # Skip DASH manifest for speed purposes. This might actually disable
    # being able to specify things like 'bestaudio' as the requested format,
    # but try anyway.
    # Get the best audio that isn't WebM, because afplay doesn't support it.
    # Use "$*" so that quoting the requested song isn't necessary.
    youtube-dl --default-search=ytsearch: \
               --youtube-skip-dash-manifest \
               --output="${TMPDIR:-/tmp/}%(title)s-%(id)s.%(ext)s" \
               --restrict-filenames \
               --format="bestaudio[ext!=webm]" \
               --exec=afplay "$*"
}

function mp3 {
    # Get the best audio, convert it to MP3, and save it to the current
    # directory.
    youtube-dl --default-search=ytsearch: \
               --restrict-filenames \
               --format=bestaudio \
               --extract-audio \
               --audio-format=mp3 \
               --audio-quality=1 "$*"
}


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
alias config='/usr/local/bin/git --git-dir=/Users/jbwashington/.cfg/ --work-tree=/Users/jbwashington'
