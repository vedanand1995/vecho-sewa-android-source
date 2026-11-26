#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SDK_ROOT="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-}}"
if [[ -z "$SDK_ROOT" || ! -d "$SDK_ROOT/build-tools" ]]; then
  echo "Set ANDROID_HOME or ANDROID_SDK_ROOT to an installed Android SDK." >&2
  exit 1
fi
APKSIGNER="$(find "$SDK_ROOT/build-tools" -type f -name apksigner | sort -V | tail -n 1)"
ZIPALIGN="$(find "$SDK_ROOT/build-tools" -type f -name zipalign | sort -V | tail -n 1)"
if [[ -z "$APKSIGNER" || -z "$ZIPALIGN" ]]; then
  echo "Android SDK build-tools with apksigner and zipalign are required." >&2
  exit 1
fi
UNSIGNED="$ROOT/dist/vecho-rebuilt-unsigned.apk"
if [[ ! -f "$UNSIGNED" ]]; then
  echo "Missing $UNSIGNED; run ./gradlew rebuildRecoveredApp first." >&2
  exit 1
fi
KEYSTORE="${HOME}/.android/debug.keystore"
mkdir -p "$(dirname "$KEYSTORE")"
if [[ ! -f "$KEYSTORE" ]]; then
  keytool -genkeypair -keystore "$KEYSTORE" -storepass android -alias androiddebugkey \
    -keypass android -keyalg RSA -keysize 2048 -validity 10000 \
    -dname 'CN=Android Debug,O=Android,C=US' >/dev/null 2>&1
fi
ALIGNED="$ROOT/dist/vecho-rebuilt-aligned.apk"
OUTPUT="$ROOT/dist/vecho-rebuilt.apk"
"$ZIPALIGN" -f 4 "$UNSIGNED" "$ALIGNED"
"$APKSIGNER" sign --ks "$KEYSTORE" --ks-pass pass:android --key-pass pass:android \
  --out "$OUTPUT" "$ALIGNED"
"$APKSIGNER" verify "$OUTPUT"
echo "Created signed debug APK: $OUTPUT"
echo "This local debug signature differs from the original publisher's signature."
