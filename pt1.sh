#!/bin/bash
function STDERR () {

cat - 1>&2

}
NAME="Jiri Pasek"
NICKNAME="Jirik"
printf "$NAME - $NICKNAME\n"
printf "$NICKNAME ma rad PS1!\n" | STDERR
exit 2
