#!/bin/bash
#
# Olivier Bilodeau <olivier@bottomlesspit.org>
# Copyright (C) 2015, 2016 Olivier Bilodeau
#
echo Deprecated. Use uirusu instead.
exit 0

if [[ "$1zz" == "zz" ]]; then
	echo Usage: $0 HASH
	exit 127
fi

# source private configuration
HERE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. $HERE_DIR/.private.sh

ruby -rrest-client -rjson -rpp -e "PP.pp(JSON.parse(RestClient.post( 'https://www.virustotal.com/api/get_file_report.json', 'key' => '$VT_APIKEY', 'resource' => '$1' )))"
