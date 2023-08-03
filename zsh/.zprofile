SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
PATH=$PATH:~/bin
PATH=$PATH:~/repos/zulu8.66.0.15-ca-jre8.0.352-linux_x64/bin/
PATH=$PATH:~/.local/bin
export QT_QPA_PLATFORMTHEME=qt5ct

# SSH agent init
SSH_ENV="$HOME/.ssh/agent-environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
ssh-add /home/forsee/.ssh/github > /dev/null 2>&1
