#!/bin/sh

set -x

rm -rf ./output_prod

./vendor/bin/sculpin generate --env=prod
