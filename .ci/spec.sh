#!/bin/sh

lower() {
    if [ $# -eq 0 ]; then
        cat <&0
    elif [ $# -eq 1 ]; then
        if [ -f "$1" -a -r "$1" ]; then
            cat "$1"
        else
            echo "$1"
        fi
    else
        return 1
    fi | tr "[:upper:]" "[:lower:]"
}

ostype() {
    uname | lower
}

os_detect() {
    export PLATFORM
    case "$(ostype)" in
        *'linux'*)  PLATFORM='linux'   ;;
        *'darwin'*) PLATFORM='osx'     ;;
        *'bsd'*)    PLATFORM='bsd'     ;;
        *'msys'*)   PLATFORM='windows' ;;
        *'cygwin'*) PLATFORM='windows' ;;
        *)          PLATFORM='unknown' ;;
    esac
}

os_detect
echo $PLATFORM

if [ "$PLATFORM" = "linux" ]; then
  set -x
  nproc
  free -m
  lscpu
  set +x
fi

if [ "$PLATFORM" = "osx" ]; then
  getconf _NPROCESSORS_ONLN
fi

if [ "$PLATFORM" = "bsd" ]; then
  sysctl -n hw.ncpu
fi

if [ "$PLATFORM" = "windows" ]; then
  set -x
  echo $NUMBER_OF_PROCESSORS
  wmic MEMORYCHIP get
  wmic cpu list /format:list
  set +x
fi

