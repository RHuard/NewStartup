#!/bin/bash
#set ack-grep to use the name ack
dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
$HOME/NewStartup/NoSudoCommon.sh
