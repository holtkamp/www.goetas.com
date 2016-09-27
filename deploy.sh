#!/bin/bash
set -e
set -x

TARGETFOLDER='/newd'
SOURCEFOLDER='output_prod'

lftp -c "
open $FTP_HOST
user $FTP_USER $FTP_PWD
mirror --reverse --ignore-time --delete --verbose $SOURCEFOLDER $TARGETFOLDER
bye
"
