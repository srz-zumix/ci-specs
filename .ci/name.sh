#!/bin/sh

if [ -n "${CI_NAME+x}" ]; then
    exit
fi

if [ -z "${APPVEYOR+x}" ]; then
    export CI_NAME="AppVeyor"
    exit
fi

if [ -z "${CIRCLECI+x}" ]; then
    export CI_NAME="CircleCI"
    exit
fi

if [ -z "${CIRRUS_CI+x}" ]; then
    export CI_NAME="Cirrus CI"
    exit
fi

if [ -z "${CF_BUILD_URL+x}" ]; then
    export CI_NAME="Codefresh"
    exit
fi

if [ -z "${DRONE+x}" ]; then
    export CI_NAME="Drone"
    exit
fi

if [ -z "${GITHUB_ACTIONS+x}" ]; then
    export CI_NAME="GitHub Actions"
    exit
fi

# if [ -z "${CIRCLECI+x}" ]; then
#     export CI_NAME="Peakflow"
#     exit
# fi

if [ -z "${SCRUTINIZER+x}" ]; then
    export CI_NAME="Scrutinizer"
    exit
fi

if [ -z "${SEMAPHORE+x}" ]; then
    export CI_NAME="Semaphore"
    exit
fi

if [ -z "${SHIPPABLE+x}" ]; then
    export CI_NAME="Shippable"
    exit
fi

if [ -z "${TRAVIS+x}" ]; then
    export CI_NAME="Travis CI"
    exit
fi

if [ -z "${CI+x}" ]; then
    export CI_NAME="local"
    exit
fi

if [ -z "${WERCKER_RUN_URL+x}" ]; then
    export CI_NAME="Wercker"
    exit
fi

export CI_NAME=$1