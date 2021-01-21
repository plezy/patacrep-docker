#!/bin/bash
#
# Update and compile patadata songbooks
#
# Patrick Lezy - 25-06-2018
#

cd /data

if [ ! -d patadata ]; then
  git clone https://github.com/patacrep/patadata.git
  cd patadata
else
  if [ -d patadata/.git ]; then
    cd patadata
    git fetch && git pull
  else
    rm -rf patadata
    git clone https://github.com/patacrep/patadata.git
    cd patadata
  fi  
fi

cd books
songbook songbook_fr.yaml
songbook songbook_en.yaml
cd /data
