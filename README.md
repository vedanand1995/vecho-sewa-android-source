# TeCHO+ Android Studio project

This repository contains an Android Studio/Gradle starter project for the TeCHO+ app, plus the supplied recovered APK contents in `403939_src/` and copied Android resources in `app/src/main/res/`.

## Important source limitation

The supplied ZIP is an APK-decompiler output: it contains `smali/`, `smali_classes2/`, decoded resources, and a manifest, but **does not contain the original Java/Kotlin source, Gradle project, or dependency declarations**. Accordingly, the included `MainActivity` is a minimal starter screen, not a reconstruction of the original app's functionality. Rebuilding the original app requires recovering/decompiling the original APK and restoring its dependencies and configuration. The recovered smali files are retained for reference and are not compiled by this starter Gradle project.

## Open in Android Studio

Open the repository folder in Android Studio and allow Gradle sync. The Android Gradle plugin is 8.7.3 and requires JDK 17+ and Android SDK platform 35 (Android Studio can install these).

## Build

With Android SDK platform 35 installed, run `./gradlew assembleDebug` (or use Android Studio's Build > Make Project). The debug APK is written to `app/build/outputs/apk/debug/app-debug.apk`.

## Original app recovered from the supplied APK

The initially created Gradle app is only a starter shell; its `app-debug.apk` is not the original TeCHO+ app. The user later supplied the original signed APK. `dist/vecho-original.apk` is that exact APK and can be installed directly. The decoded Smali/resources in `403939_src/` now include Apktool metadata, and `scripts/rebuild-recovered-apk.sh` rebuilds them into an unsigned APK. The `recovered-java/` directory is JADX-generated Java for inspection; it is decompiled output, not the app's original Java source, and it is not a Gradle-compilable source set by itself.

The recovered app uses package `com.argusoft.sewa.android.app`. If a starter APK with the same package is installed, uninstall it before installing the original APK, because they are signed by different certificates.
