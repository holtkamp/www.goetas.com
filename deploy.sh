#!/bin/bash
set -e
TARGETFOLDER='/'
SOURCEFOLDER='output_prod'

lftp -c "
open $FTP_HOST
user $FTP_USER $FTP_PWD
mirror --reverse --ignore-time --delete --verbose $SOURCEFOLDER $TARGETFOLDER
bye
"
