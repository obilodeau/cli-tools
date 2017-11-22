#!/bin/bash
#
# Olivier Bilodeau <olivier@bottomlesspit.org>
# Copyright (C) 2015 Olivier Bilodeau
#
# Client to Team CYMRU's IP TO ASN MAPPING
# http://www.team-cymru.org/IP-ASN-mapping.html
PATH=/usr/bin:/bin

IP_LIST=$1

if [ \! -e "$IP_LIST" ]; then
	echo "Usage: $0 <ip-list.txt>"
	exit 1
fi

TMP=`mktemp`

echo begin >> $TMP
echo verbose >> $TMP
cat $IP_LIST >> $TMP
echo end >> $TMP

ncat whois.cymru.com 43 < $TMP

rm $TMP
