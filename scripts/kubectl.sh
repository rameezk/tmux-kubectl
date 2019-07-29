#!/usr/bin/env bash

get_current_context() {
    value=$(kubectl config current-context)
    value="test"
    echo "$value"
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
