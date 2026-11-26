#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
APKTOOL_JAR="${APKTOOL_JAR:-$ROOT/tools/apktool.jar}"
if [[ ! -f "$APKTOOL_JAR" ]]; then
  mkdir -p "$(dirname "$APKTOOL_JAR")"
  curl -fL --retry 3 -o "$APKTOOL_JAR" \
    https://github.com/iBotPeaches/Apktool/releases/download/v2.10.0/apktool_2.10.0.jar
fi
mkdir -p "$ROOT/dist"
java -jar "$APKTOOL_JAR" b "$ROOT/403939_src" -o "$ROOT/dist/vecho-rebuilt-unsigned.apk"
echo "Created $ROOT/dist/vecho-rebuilt-unsigned.apk"
echo "Unsigned APK must be signed with Android SDK apksigner before installing. For the exact uploaded signed APK, use dist/vecho-original.apk."
