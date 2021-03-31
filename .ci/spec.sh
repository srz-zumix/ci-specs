#!/bin/sh

BASEDIR=$(dirname $0)

echo ------------------------
echo ENV
env
echo ------------------------

if [ ! -f ${BASEDIR}/ci-normalize-envvars/ci-env.sh ]; then
    echo git submodule not updated
    exit 1
fi
. ${BASEDIR}/ci-normalize-envvars/ci-env.sh

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

export HAS_VS=false
export HAS_VCPERF=false
if [ -f /.dockerenv ]; then
  export IS_DOCKER=true
else
  export IS_DOCKER=false
fi


if [ "$PLATFORM" = "linux" ]; then
  echo NUMBER_OF_PROCESSORS
  nproc
  export NUMBER_OF_PROCESSORS=$(nproc)
  echo ------------------------
  echo Memory
  free -m
  export RAMSIZE=$(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE)))
  # export RAMSIZE_GB=$(echo "scale=3; ${RAMSIZE}/1024/1024/1024" | bc)
  export RAMSIZE_GB=$(echo ${RAMSIZE} | awk '{printf ("%4.2f", $1/1024/1024/1024)}')
  echo ------------------------
  echo CPU
  lscpu
  arch
  export ARCH=$(arch)
  echo ------------------------
  echo DISK
  cat /sys/block/sda/queue/rotational
  SSD=$(cat /sys/block/sda/queue/rotational)
  if [ "${SSD}" -eq 0 ]; then
    export DISK="SSD"
  else
    export DISK="HDD"
  fi
  df -h
  export FREESPACE=$(df -l --output=avail -h -BG ${BASEDIR} | egrep -o [0-9]+G)
fi

if [ "$PLATFORM" = "osx" ]; then
  echo NUMBER_OF_PROCESSORS
  getconf _NPROCESSORS_ONLN
  export NUMBER_OF_PROCESSORS=$(getconf _NPROCESSORS_ONLN)
  echo ------------------------
  echo Memory
  export RAMSIZE=$(sysctl -n hw.memsize)
  export RAMSIZE_GB=$(echo "scale=3; ${RAMSIZE}/1024/1024/1024" | bc)
  echo "System Memory: ${RAMSIZE_GB} MB"
  vm_stat | perl -ne '/page size of (\d+)/ and $size=$1; /Pages\s+([^:]+)[^\d]+(\d+)/ and printf("%-16s % 16.2f Mi\n", "$1:", $2 * $size / 1048576);'
  echo ------------------------
  echo CPU
  sysctl -a machdep.cpu
  arch
  export ARCH=$(arch)
  echo ------------------------
  echo DISK
  diskutil info disk0
  SSD=$(diskutil info disk0 | grep "Solid State" | grep Yes)
  if [ -n "${SSD}" ]; then
    export DISK="SSD"
  else
    export DISK="HDD"
  fi
  df -h
  export FREESPACE=$(df -l -H ${BASEDIR} | egrep -v Avail | xargs echo | cut -d" " -f4)
fi

if [ "$PLATFORM" = "bsd" ]; then
  echo NUMBER_OF_PROCESSORS
  sysctl -n hw.ncpu
  export NUMBER_OF_PROCESSORS=$(sysctl -n hw.ncpu)
  echo ------------------------
  echo Memory
  sysctl hw | egrep 'hw.(phys|user|real)'
  export RAMSIZE=$(sysctl hw | egrep 'hw.phys' | egrep -o [0-9]+)
  export RAMSIZE_GB=$(echo ${RAMSIZE} | awk '{printf ("%4.2f", $1/1024/1024/1024)}')
  echo ------------------------
  echo CPU
  grep ^CPU /var/run/dmesg.boot
  sysctl dev.cpu
  uname -m
  export ARCH=$(uname -m)
  echo ------------------------
  echo DISK
  geom disk list
  SSD=$(geom disk list | grep rotationrate | egrep -o [0-9]+)
  if [ "${SSD}" -eq 0 ]; then
    export DISK="SSD"
  else
    export DISK="HDD"
  fi
  df -h
  export FREESPACE=$(df -l -H ${BASEDIR} | egrep -v Avail | xargs echo | cut -d" " -f4)
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
  echo $PROCESSOR_ARCHITECTURE
  export ARCH=$PROCESSOR_ARCHITECTURE
  echo ------------------------
  echo DISK
  PowerShell "Get-PhysicalDisk | Format-Table -AutoSize"
  SSD=$(PowerShell "Get-PhysicalDisk | Format-Table -AutoSize" | grep -o SSD)
  if [ -n "${SSD}" ]; then
    export DISK="SSD"
  else
    export DISK="HDD"
  fi
  df -h
  export FREESPACE=$(df -l --output=avail -h -BG ${BASEDIR} | egrep -o [0-9]+G)

  echo ------------------------
  echo Visual Studio
  echo ------------------------
  HAS_VS=$(${BASEDIR}/vswhere.bat)

  if [ -f c:/License.txt ]; then
    export IS_DOCKER=true
  fi

  # vcperf
  HAS_VCPERF=$(${BASEDIR}/has_vcperf.bat)
fi

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo ------------------------
echo ENV
env
echo ------------------------

# DATE=$(TZ="Asia/Tokyo" date)
DATE=$(date -u)
echo "name    : $CI_ENV_NAME"
echo "commit  : $CI_ENV_GIT_COMMIT"
echo "branch  : $CI_ENV_GIT_BRANCH"
echo "base    : $CI_ENV_GIT_BASE_BRANCH"
echo "source  : $CI_ENV_GIT_SOURCE_BRANCH"
echo "target  : $CI_ENV_GIT_TARGET_BRANCH"
echo "current : $CURRENT_BRANCH"
echo "tag     : $CI_ENV_GIT_TAG"
echo "tag name: $CI_ENV_GIT_TAG_NAME"

# if [ "${CI_ENV_GIT_BRANCH}" != "feature/envs" ]; then
#     exit 1
# fi
# if [ -n "${CI_ENV_GIT_SOURCE_BRANCH}" ]; then
#     if [ "${CI_ENV_GIT_SOURCE_BRANCH}" != "feature/envs" ]; then
#         exit 1
#     fi
#     if [ "${CI_ENV_GIT_TARGET_BRANCH}" != "master" ]; then
#         exit 1
#     fi
#     if [ "${CI_ENV_GIT_BASE_BRANCH}" != "master" ]; then
#         exit 1
#     fi
# else
#     if [ "${CI_ENV_GIT_BASE_BRANCH}" != "feature/envs" ]; then
#         exit 1
#     fi
# fi
# if [ "${CI_ENV_GIT_TAG}" != "false" ]; then
#     exit 1
# fi

echo "NPROC : ${NUMBER_OF_PROCESSORS}"
echo "ARCH  : ${ARCH}"
echo "RAM   : ${RAMSIZE_GB}"
echo "DISK  : ${DISK}"
echo "FREE  : ${FREESPACE}"
echo "DOCKER: ${IS_DOCKER}"
echo "VS    : ${HAS_VS}"
echo "VCPERF: ${HAS_VCPERF}"
export OS_NAME=$(uname -s)

if [ -z "${CI_ENV_NAME+x}" ]; then
    echo CI_ENV_NAME is empty
    exit 1
fi
if [ -z "${CI_ENV_GIT_COMMIT+x}" ]; then
    echo CI_ENV_GIT_COMMIT is empty
    exit 1
fi

if [ -z ${INTEGROMAT_WEBHOOK_URL} ]; then
  export INTEGROMAT_WEBHOOK_URL="https://hook.integromat.com/iiwxwh9wkt8xery9qb976qzw57zvynki"
fi

# mask test
echo ${INTEGROMAT_WEBHOOK_URL}

curl \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"time\": \"${DATE}\", \"ci\": \"${CI_ENV_NAME}\", \"commit\": \"${CI_ENV_GIT_COMMIT}\", \"os\": \"${PLATFORM}\", \"os_name\": \"${OS_NAME}\", \"arch\": \"${ARCH}\", \"disk\": \"${DISK}\", \"disk_avail\": \"${FREESPACE}\", \"docker\": \"${IS_DOCKER}\", \"nproc\": \"${NUMBER_OF_PROCESSORS}\", \"ram\": \"${RAMSIZE_GB}\", \"vs\":\"${HAS_VS}\", \"vcperf\":\"${HAS_VCPERF}\" }" \
  ${INTEGROMAT_WEBHOOK_URL}
