#!/bin/bash
# set -euxo pipefail
USER="XMG Win"
rm -r dist
npx @dungeonmans-mod-tools/cli validate-refs src
npx @dungeonmans-mod-tools/cli build src dist/tstt_stronkest
rm -r "C:\Users\\${USER}\AppData\Roaming\Dungeonmans\modcontent\mods\tstt_stronkest"
mkdir -p "C:\Users\\${USER}\AppData\Roaming\Dungeonmans\modcontent\mods"
cp -r "dist/tstt_stronkest/" "C:\Users\\${USER}\AppData\Roaming\Dungeonmans\modcontent\mods\tstt_stronkest"
echo 'Deployed'