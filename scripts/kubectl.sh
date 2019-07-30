#!/usr/bin/env bash

get_current_context() {
    current_context="$(kubectl config current-context 2>/dev/null)"
    echo "$current_context"
}

get_current_namespace() {
    echo "N/A"
}

main() {
    context="$(get_current_context)"
    namespace="$(get_current_namespace)"

    if [[ -z $namespace ]]; then
        echo "$context"
    else
        echo "$context:$namespace"
    fi
}

main
