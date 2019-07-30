#!/usr/bin/env bash

get_current_context() {
    current_context="$(kubectl config current-context 2>/dev/null)"
    echo "$current_context"
}

get_current_namespace() {
    current_namespace="$(kubectl config view --minify --output 'jsonpath={..namespace}')"
    echo "$current_namespace"
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
