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

export HAS_VS=false

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
  env | grep "VS[0-9]*COMNTOOLS"
  if [ $? = 0 ]; then
    export HAS_VS=true
  fi
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

if [ -f /.dockerenv ]; then
  export IS_DOCKER=true
else
  export IS_DOCKER=false
fi

echo "NPROC : ${NUMBER_OF_PROCESSORS}"
echo "RAM   : ${RAMSIZE_GB}"
echo "DISK  : ${DISK}"
echo "FREE  : ${FREESPACE}"
echo "DOCKER: ${IS_DOCKER}"
echo "VS    : ${HAS_VS}"
export OS_NAME=$(uname -s)

if [ -z ${INTEGROMAT_WEBHOOK_URL} ]; then
  export INTEGROMAT_WEBHOOK_URL="https://hook.integromat.com/iiwxwh9wkt8xery9qb976qzw57zvynki"
fi

# mask test
echo ${INTEGROMAT_WEBHOOK_URL}

curl \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"time\": \"${DATE}\", \"ci\": \"${CI_NAME}\", \"commit\": \"${GIT_COMMIT}\", \"os\": \"${PLATFORM}\", \"os_name\": \"${OS_NAME}\", \"disk\": \"${DISK}\", \"disk_avail\": \"${FREESPACE}\", \"docker\": \"${IS_DOCKER}\", \"nproc\": \"${NUMBER_OF_PROCESSORS}\", \"ram\": \"${RAMSIZE_GB}\", \"vs\":\"${HAS_VS}\" }" \
  ${INTEGROMAT_WEBHOOK_URL}
