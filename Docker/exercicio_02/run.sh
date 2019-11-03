#!/bin/sh

echo "$PALAVRA"

if [ -z "$PALAVRA" ];then
	PALAVRA="`/usr/games/fortune`"
fi

/usr/games/cowsay $PALAVRA
