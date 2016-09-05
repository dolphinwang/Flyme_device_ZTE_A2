#!/bin/bash

#rm -rf out
#mkdir out

make framework-res

make framework-res

apktool if vendor/system/framework/framework-res.apk

apktool if vendor/system/framework/framework-zte-res.apk

apktool if ../../flyme/release/arm/SYSTEM/framework/framework-res.apk

apktool if ../../flyme/release/arm/SYSTEM/framework/flyme-res/flyme-res.apk

#apktool d ../../flyme/release/arm/SYSTEM/app/PackageInstaller/PackageInstaller.apk -o out/PackageInstaller

#idtoname out/PackageInstaller/res/values/public.xml out/PackageInstaller

apktool d ../../flyme/release/arm/SYSTEM/priv-app/Mms/Mms.apk -o out/Mms

idtoname out/Mms/res/values/public.xml out/Mms

apktool d ../../flyme/release/arm/SYSTEM/priv-app/Settings/Settings.apk -o out/Settings

idtoname out/Settings/res/values/public.xml out/Settings

apktool d ../../flyme/release/arm/SYSTEM/priv-app/SystemUI/SystemUI.apk -o out/SystemUI

idtoname out/SystemUI/res/values/public.xml out/SystemUI

apktool d ../../flyme/release/arm/SYSTEM/priv-app/MzCallSetting/MzCallSetting.apk -o out/MzCallSetting

idtoname out/MzCallSetting/res/values/public.xml out/MzCallSetting
