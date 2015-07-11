#!/bin/sh

# Reset each repo in order to successfully repo sync
echo Resetting each patched repo...

cd packages/apps/Settings
git reset --hard && git clean -f -d
cd ../../..
