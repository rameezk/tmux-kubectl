#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl_context_interpolation_string="\#{kubectl_context}"

source $CURRENT_DIR/scripts/kubectl.sh

get_tmux_option() {
	  local option=$1
	  local default_value=$2
	  local option_value=$(tmux show-option -gqv "$option")
	  if [ -z "$option_value" ]; then
		    echo "$default_value"
	  else
		    echo "$option_value"
	  fi
}

set_tmux_option() {
    local option="$1"
	  local value="$2"
	  tmux set-option -gq "$option" "$value"
}

do_interpolation() {
	  local string="$1"
	  local interpolated="${string/$kubectl_context_interpolation_string}"
	  echo "$interpolated"
}

update_tmux_option() {
    local option="$1"
	  local option_value="$(get_tmux_option "$option")"
	  local new_option_value="$(do_interpolation "$option_value")"
	  set_tmux_option "$option" "$new_option_value"
}

main() {
    update_tmux_option "status-left"
    update_tmux_option "status-right"
}

main
