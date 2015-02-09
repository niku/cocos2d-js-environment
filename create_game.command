#!/bin/sh

cd `dirname $0`
name=`cat game_name.txt`

vagrant up
vagrant ssh -c "/home/vagrant/c create ${name}"
vagrant halt
