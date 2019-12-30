#!/bin/sh

function get_name() {
    if [ -n "${CI_NAME+x}" ]; then
        return
    fi

    if [ -n "${APPVEYOR+x}" ]; then
        export CI_NAME="AppVeyor"
        return
    fi

    if [ -n "${CIRCLECI+x}" ]; then
        export CI_NAME="CircleCI"
        return
    fi

    if [ -n "${CIRRUS_CI+x}" ]; then
        export CI_NAME="Cirrus CI"
        return
    fi

    if [ -n "${CF_BUILD_URL+x}" ]; then
        export CI_NAME="Codefresh"
        return
    fi

    if [ -n "${DRONE+x}" ]; then
        export CI_NAME="Drone"
        return
    fi

    if [ -n "${GITHUB_ACTIONS+x}" ]; then
        export CI_NAME="GitHub Actions"
        return
    fi

    # if [ -n "${CIRCLECI+x}" ]; then
    #     export CI_NAME="Peakflow"
    #     return
    # fi

    if [ -n "${SCRUTINIZER+x}" ]; then
        export CI_NAME="Scrutinizer"
        return
    fi

    if [ -n "${SEMAPHORE+x}" ]; then
        export CI_NAME="Semaphore"
        return
    fi

    if [ -n "${SHIPPABLE+x}" ]; then
        export CI_NAME="Shippable"
        return
    fi

    if [ -n "${TRAVIS+x}" ]; then
        export CI_NAME="Travis CI"
        return
    fi

    if [ -n "${WERCKER_RUN_URL+x}" ]; then
        export CI_NAME="Wercker"
        return
    fi


    if [ -n "${CI+x}" ]; then
        export CI_NAME="local"
        return
    fi
    export CI_NAME=$1
}

get_name