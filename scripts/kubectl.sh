#!/usr/bin/env bash

get_current_context() {
    context=$(kubectl config current-context)
    echo "$context"
}
