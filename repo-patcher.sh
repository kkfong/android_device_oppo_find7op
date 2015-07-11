#!/bin/sh

echo Applying repo-specific patches...

cd packages/apps/Settings
git reset --hard && git clean -f -d
patch -p1 < ../../../device/oppo/find7op/patches/apps-Settings_remove-OTA.patch
cd ../../../vendor/omni
git reset --hard && git clean -f -d
patch -p1 < ../../device/oppo/find7op/patches/vendor-omni_build-id.patch
cd ../..
