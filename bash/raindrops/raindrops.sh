#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

main () {

    number=$1

    result=""
    if ! (( number % 3 )); then
        result+="Pling"
    fi
    if ! (( number % 5 )); then
        result+="Plang"
    fi
    if ! (( number % 7 )); then
        result+="Plong"
    fi
    if [[ -z $result ]]; then
        result+="$number"
    fi
    echo $result
}

main "$@"

