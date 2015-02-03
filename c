#!/bin/bash

export COCOS_CONSOLE_ROOT=/home/vagrant/cocos2d-js-v3.2/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

case $1 in
     "c" | "create" ) cocos new $2 -l js -d /cocos2d-js-games ;;
     "r" | "run"    ) cd /cocos2d-js-games/$2 && cocos run -p web --host 0.0.0.0 ;;
     * ) cat << __EOD__ ;;
# Create NewGame
./c c NewGame
./c create NewGame

and access directory to ../cocos2d-js-games in your local machine.

# Run NewGame
./c r NewGame
./c run NewGame

and access url to http://localhost:8000/ via browser from your local machine.
__EOD__
esac
