log debug "emacs: Configuring..."
if [[ ${ENABLE_SSH:-true} = true ]]; then
  export SSH_AUTH_SOCK=${SSH_AUTH_SOCK:-/tmp/.ssh-agent}

  envsubst < /app/supervisord.d/emacs.envsubst > /app/supervisord.d/emacs.conf
  log info "emacs: Service enabled."
else
  log info "emacs: Service disabled."
fi
