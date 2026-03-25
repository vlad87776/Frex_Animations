#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

pkg update -y
pkg install -y openjdk-21 gradle git

export JAVA_HOME=${PREFIX}/lib/jvm/openjdk-21
export PATH=${JAVA_HOME}/bin:${PATH}

if [ ! -f "gradlew" ]; then
  gradle wrapper --gradle-version 8.10.2
fi

echo "Готово. Можно запускать: ./gradlew build"
