#!/bin/sh

BASEDIR=$(dirname $0)

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
        *'mingw'*)  PLATFORM='windows' ;;
        *'cygwin'*) PLATFORM='windows' ;;
        *)          PLATFORM='unknown' ;;
    esac
}

os_detect
uname
echo $PLATFORM

if [ "$PLATFORM" = "linux" ]; then
  echo NUMBER_OF_PROCESSORS
  nproc
  export NUMBER_OF_PROCESSORS=$(nproc)
  echo ------------------------
  echo Memory
  free -m
  export RAMSIZE_MB=$(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024)))
  export RAMSIZE_GB=$(echo "scale=3; ${RAMSIZE_MB}/1024" | bc)
  echo ------------------------
  echo CPU
  lscpu
fi

if [ "$PLATFORM" = "osx" ]; then
  echo NUMBER_OF_PROCESSORS
  getconf _NPROCESSORS_ONLN
  export NUMBER_OF_PROCESSORS=$(getconf _NPROCESSORS_ONLN)
  echo ------------------------
  echo Memory
  hwmemsize=$(sysctl -n hw.memsize)
  export RAMSIZE_MB=$(expr $hwmemsize / $((1024**2)))
  export RAMSIZE_GB=$(echo "scale=3; ${RAMSIZE_MB}/1024" | bc)
  echo "System Memory: ${RAMSIZE_GB} MB"
  vm_stat | perl -ne '/page size of (\d+)/ and $size=$1; /Pages\s+([^:]+)[^\d]+(\d+)/ and printf("%-16s % 16.2f Mi\n", "$1:", $2 * $size / 1048576);'
  echo ------------------------
  echo CPU
  sysctl -a machdep.cpu
fi

if [ "$PLATFORM" = "bsd" ]; then
  echo NUMBER_OF_PROCESSORS
  sysctl -n hw.ncpu
  export NUMBER_OF_PROCESSORS=$(sysctl -n hw.ncpu)
  echo ------------------------
  echo Memory
  sysctl hw | egrep 'hw.(phys|user|real)'
  export RAMSIZE=$(hw | egrep 'hw.phys' | egrep -o [0-9]+)

  echo ------------------------
  echo CPU
  sysctl dev.cpu
fi

if [ "$PLATFORM" = "windows" ]; then
  echo NUMBER_OF_PROCESSORS
  echo $NUMBER_OF_PROCESSORS
  echo ------------------------
  echo Memory
  # wmic MEMORYCHIP get
  wmic computersystem get TotalPhysicalMemory
  export RAMSIZE=$(wmic computersystem get TotalPhysicalMemory | grep [0-9])
  export RAMSIZE_GB=$(echo ${RAMSIZE} | awk '{printf ("%4.2f", $1/1024/1024/1024)}')
  echo ------------------------
  echo CPU
  wmic cpu list /format:list
fi

echo ------------------------
echo ENV
env
echo ------------------------

# DATE=$(TZ="Asia/Tokyo" date)
DATE=$(date -u)
. ${BASEDIR}/name.sh $1
echo $CI_NAME

. ${BASEDIR}/commit-hash.sh
echo $GIT_COMMIT
echo "CORE: ${NUMBER_OF_PROCESSORS}"
echo "RAM : ${RAMSIZE_GB}"
export OS_NAME=$(uname -s)

curl \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"time\": \"${DATE}\", \"ci\": \"${CI_NAME}\", \"commit\": \"${GIT_COMMIT}\", \"os\": \"${PLATFORM}\", \"os_name\": \"${OS_NAME}\", \"core\": \"${NUMBER_OF_PROCESSORS}\", \"ram\": \"${RAMSIZE_GB}\"}" \
  https://hook.integromat.com/iiwxwh9wkt8xery9qb976qzw57zvynki