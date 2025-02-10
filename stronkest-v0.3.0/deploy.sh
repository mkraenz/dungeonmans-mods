#!/bin/bash
USER="YOUR_WINDOWS_USERNAME"
rm -r dist
npx @dungeonmans-mod-tools/cli validate-refs src
npx @dungeonmans-mod-tools/cli build src dist/stronkest-v-0-3-0
rm -r "C:\Users\$USER\AppData\Roaming\Dungeonmans\modcontent\mods\stronkest-v-0-3-0"
cp -r "dist/stronkest-v-0-3-0" "C:\Users\$USER\AppData\Roaming\Dungeonmans\modcontent\mods\stronkest-v-0-3-0"
echo 'Deployed'