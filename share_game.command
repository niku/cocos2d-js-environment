#!/bin/sh

cd `dirname $0`
name=`cat game_name.txt`

vagrant share
