#!/bin/bash

# CURL with an Internet Explorer 6 User-Agent
# data to stdout
# metadata to stderr
curl -A "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)" -v $@
