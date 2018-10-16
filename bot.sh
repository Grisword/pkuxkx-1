#!/bin/sh

cd bot;

echo "#var user.id      $PKUXKX_ID;"        >  etc/env-user.tin
echo "#var user.passwd  $PKUXKX_PASSWD;"    >> etc/env-user.tin

screen -c ../screenrc ./xkx.tin
