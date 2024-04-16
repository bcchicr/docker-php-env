#! /bin/bash

if [[ $# -eq 0 ]]; then
    >&2 echo "No argument. Provide build target"
    exit 1
elif [[ $# -gt 1 ]]; then
    >&2 echo "Too much arguments. Provide build target"
    exit 1
fi

if ! [[ -f ./composer.json ]]; then
    echo "No composer.json provided."
    exit 0
fi

if [[ $1 == "development" ]]; then
    params=""
elif [[ $1 == "final" ]]; then
    params="--optimize-autoloader --no-dev"
else
    >&2 echo "Unknown build target"
    exit 1
fi

composer -n install $params
composer -n update

