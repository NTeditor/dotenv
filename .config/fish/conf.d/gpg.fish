set -gx GPG_TTY (tty)
set -gx SSH_AGENT_PID ""
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye >/dev/null
