# TeCHO+ Android Studio project

This repository contains an Android Studio/Gradle starter project for the TeCHO+ app, plus the supplied recovered APK contents in `403939_src/` and copied Android resources in `app/src/main/res/`.

## Important source limitation

The supplied ZIP is an APK-decompiler output: it contains `smali/`, `smali_classes2/`, decoded resources, and a manifest, but **does not contain the original Java/Kotlin source, Gradle project, or dependency declarations**. Accordingly, the included `MainActivity` is a minimal starter screen, not a reconstruction of the original app's functionality. Rebuilding the original app requires recovering/decompiling the original APK and restoring its dependencies and configuration. The recovered smali files are retained for reference and are not compiled by this starter Gradle project.

## Open in Android Studio

Open the repository folder in Android Studio and allow Gradle sync. The Android Gradle plugin is 8.7.3 and requires JDK 17+ and Android SDK platform 35 (Android Studio can install these).
