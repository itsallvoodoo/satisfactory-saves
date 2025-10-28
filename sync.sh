#!/bin/bash
filedate=date -r /home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server/fomo_autosave_2.sav

cp /home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server/fomo_autosave_2.sav /home/steam/satisfactory-saves/sfod.sav

git add .

git commit -m "Uploading new save for $filedate"

git push
