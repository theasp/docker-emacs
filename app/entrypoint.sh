#!/bin/bash

USER_PASSWORD="${USER_PASSWORD:-*}"

set -x

# User info
USER_NAME="${USER_NAME:-ubuntu}"
USER_GROUP="${USER_GROUP:-$USER_NAME}"
USER_UID="${USER_UID:-1000}"
USER_GID="${USER_GID:-${USER_UID}}"
USER_SHELL="${USER_SHELL:-/bin/bash}"
USER_HOME="${USER_HOME:-/home/${USER_NAME}}"
USER_GECOS="${USER_GECOS:-Unknown}"

# Create the user, if it doesn't exist
addgroup --gid ${USER_GID} ${USER_GROUP}
adduser --disabled-password --home ${USER_HOME} --shell ${USER_SHELL} --uid ${USER_UID} --gid ${USER_GID} --gecos "$USER_GECOS" ${USER_NAME}

# Add the user to the sudo group
adduser ${USER_NAME} sudo

# Make a log directory
mkdir /app/log

# Make the /app directory owned by user
chown -R ${USER_NAME}:${USER_GROUP} /app 

# Change the user's password
chpasswd -e <<<"${USER_NAME}:${USER_PASSWORD}"
exec su -c 'supervisord -c /app/supervisord.conf' ${USER_NAME}
