#!/bin/sh

set -x

test -f composer.phar || curl -sS https://getcomposer.org/installer | php
./composer.phar install

./deploy.sh
