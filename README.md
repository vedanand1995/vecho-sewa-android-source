# Vecho+ Android recovery project

This repository contains the supplied Vecho+ APK, its recovered Smali/resources, JADX-generated Java for reference, and a small Android Studio starter module. The APK and recovered files are not the original developer's source project.

## Install the actual app

`dist/vecho-original.apk` is the exact signed APK supplied by the user. Install that to run the original Vecho+ app. If the starter APK is already installed, uninstall it first: both use package `com.argusoft.sewa.android.app` but have different signing certificates.

## Rebuild the recovered app

Open this repository in Android Studio, set `ANDROID_HOME` or `ANDROID_SDK_ROOT` to an installed Android SDK, then run the Gradle task **`signRecoveredApp`** from the Gradle tool window, or use:

```bash
./gradlew signRecoveredApp
```

This task runs `scripts/rebuild-recovered-apk.sh` to assemble `403939_src/` with Apktool, then signs the result with the local Android debug key. Output: `dist/vecho-rebuilt.apk`. The signature will not match the original publisher's, so uninstall the publisher-signed app before installing the rebuilt APK. To create only the unsigned APK, run `./gradlew rebuildRecoveredApp`.

The rebuild source is Smali and decoded resources in `403939_src/`; the repository includes `apktool.yml` metadata. The `recovered-java/` directory contains JADX-generated Java for reading and search, not guaranteed compilable source. JADX reported decompilation errors, and dependencies/build configuration from the original developer project were not supplied.

## Android Studio starter module

The `app/` Gradle module is a clearly labeled starter shell, not the original Vecho+ functionality. Android Studio's normal `assembleDebug` builds this starter module. Use the `signRecoveredApp` Gradle task above to rebuild the recovered original app instead.
