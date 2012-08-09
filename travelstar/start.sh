#!/bin/sh

APP={{appid}}
COOKIE=abc123

cd `dirname $0`
exec erl -smp auto +K true +A 16 -pa $PWD/ebin $PWD/deps/*/ebin -sname $APP -setcookie $COOKIE -config etc/app -boot start_sasl -s $APP $@
