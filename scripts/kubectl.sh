#!/usr/bin/env bash

get_current_context() {
    context=$(kubectl config current-context)
    echo "$context"
}

get_current_namespace() {
    echo "not_implemented"
}

main() {
    context="$(get_current_context)"
    namespace="$(get_current_namespace)"

    echo "$context:$namespace"
}

main
