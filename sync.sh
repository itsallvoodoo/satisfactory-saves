#!/bin/bash
savepath="/home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server/"
savefile=${savepath}$(ls -Art ${savepath} | tail -n 1)
gitfile="/home/steam/satisfactory-saves/sfod.sav"

# Moving to git repo
cd /home/steam/satisfactory-saves/

#echo "Saving file ${savefile}"

filedate=$(date -r ${savefile})

#echo "filedate is ${filedate}"

cp ${savefile} ${gitfile}

git add .

git commit -m "Uploading new save for ${filedate}"

git push
