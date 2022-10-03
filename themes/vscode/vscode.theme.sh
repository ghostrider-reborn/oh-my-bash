#! bash oh-my-bash.module

#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------
#
# This theme [1] is based on the code generated by vscode-dev-container [2].
# Specifically, the code is based on the template found in Ref. [3].  The
# original code of [2] is licensed by Microsoft Corporation under the MIT
# license.
#
# [1] https://github.com/ghostrider-reborn/oh-my-bash/pull/331
# [2] https://github.com/microsoft/vscode-dev-containers
# [3] https://github.com/microsoft/vscode-dev-containers/blob/172a918f40e31bd24da8e64135026ec9f26c91b0/containers/javascript-node/.devcontainer/library-scripts/common-debian.sh#L303-L320
#

_omb_theme_vscode_initialize() {
    local userpart='`export XIT=$? \
        && [ ! -z "${GITHUB_USER}" ] && echo -n "\[\033[0;32m\]@${GITHUB_USER} " || echo -n "\[\033[0;32m\]\u " \
        && [ "$XIT" -ne "0" ] && echo -n "\[\033[1;31m\]➜" || echo -n "\[\033[0m\]➜"`'
    local gitbranch='`\
        if [ "$(git config --get codespaces-theme.hide-status 2>/dev/null)" != 1 ]; then \
            export BRANCH=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null); \
            if [ "${BRANCH}" != "" ]; then \
                echo -n "\[\033[0;36m\](\[\033[1;31m\]${BRANCH}" \
                && if git ls-files --error-unmatch -m --directory --no-empty-directory -o --exclude-standard ":/*" > /dev/null 2>&1; then \
                        echo -n " \[\033[1;33m\]✗"; \
                fi \
                && echo -n "\[\033[0;36m\]) "; \
            fi; \
        fi`'
    local lightblue='\[\033[1;34m\]'
    local removecolor='\[\033[0m\]'
    PS1="${userpart} ${lightblue}\w ${gitbranch}${removecolor}\$ "
    unset -f _omb_theme_vscode_initialize
}
_omb_theme_vscode_initialize

_omb_theme_PROMPT_COMMAND() { true; }
PROMPT_DIRTRIM=4
