# Based on the great ys theme (http://ysmood.org/wp/2013/03/my-ys-terminal-theme/)

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo $HOST
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# VCS
YS_VCS_PROMPT_PREFIX1=" %{$fg[white]%}on%{$reset_color%} "
YS_VCS_PROMPT_PREFIX2=":%{$fg[cyan]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
YS_VCS_PROMPT_DIRTY=" %{$fg[red]%}✖︎"
YS_VCS_PROMPT_CLEAN=" %{$fg[green]%}●"

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}git${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

# HG info
local hg_info='$(ys_hg_prompt_info)'
ys_hg_prompt_info() {
	# make sure this is a hg dir
	if [ -d '.hg' ]; then
		echo -n "${YS_VCS_PROMPT_PREFIX1}hg${YS_VCS_PROMPT_PREFIX2}"
		echo -n $(hg branch 2>/dev/null)
		if [ -n "$(hg status 2>/dev/null)" ]; then
			echo -n "$YS_VCS_PROMPT_DIRTY"
		else
			echo -n "$YS_VCS_PROMPT_CLEAN"
		fi
		echo -n "$YS_VCS_PROMPT_SUFFIX"
	fi
}

### Docker Config
DOCKER_THEME_PROMPT="🐳"

DOCKER_LOCAL_COLOR="green"
DOCKER_REMOTE_COLOR="red"

get_docker_host() {
	if [ -f 'docker-compose.yml' ]; then
        local _docker="$DOCKER_MACHINE_NAME"
        local _docker_local="%{$fg_bold[$DOCKER_LOCAL_COLOR]%}local%{$reset_color%}"
        local _docker_remote="%{$fg_bold[$DOCKER_REMOTE_COLOR]%}$_docker%{$reset_color%}"

        local _docker_status="$_docker_remote"
        if [[ -z "$_docker" ]]; then
            _docker_status="$_docker_local"
        fi

        echo "[$DOCKER_THEME_PROMPT : $_docker_status]"
    fi
}
local docker_info='$(get_docker_host)'

# Below is the prompt for the directory
# %{$fg[white]%}at \
# %{$fg[green]%}$(box_name) \

# Prompt format: \n # USER in DIRECTORY on git:BRANCH STATE docker [TIME] \n $
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$fg[cyan]%}%n \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
${hg_info}\
${git_info} \
${docker_info} \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[red]%}→ %{$reset_color%}"