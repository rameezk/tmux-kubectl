#!/usr/bin/env bash

get_current_context() {
    current_context="$(kubectl config current-context 2>/dev/null)"
    echo "$current_context"
}

get_current_namespace() {
    echo ""
}

main() {
    context="$(get_current_context)"
    namespace="$(get_current_namespace)"

    echo "$context:$namespace"
}

main
