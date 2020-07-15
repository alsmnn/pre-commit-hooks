#!/bin/bash

if [[ -f poetry.lock ]]; then
    DIFF=$(git diff --shortstat "$PRE_COMMIT_FROM_REF".."$PRE_COMMIT_TO_REF" poetry.lock)
    if [[ $DIFF != "" ]]; then
        poetry install
    fi
fi
