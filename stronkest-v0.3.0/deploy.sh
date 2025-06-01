#!/bin/bash
USER="XMG Win"
rm -r dist
npx @dungeonmans-mod-tools/cli validate-refs src
npx @dungeonmans-mod-tools/cli build src dist/stronkest-v-0-3-0
rm -r "C:\Users\\${USER}\AppData\Roaming\Dungeonmans\modcontent\mods\stronkest-v-0-3-0"
cp -rp "dist/stronkest-v-0-3-0" "C:\Users\\${USER}\AppData\Roaming\Dungeonmans\modcontent\mods\stronkest-v-0-3-0"
echo 'Deployed'