#!/bin/bash

# CURL with an Internet Explorer 8 User-Agent
# data to stdout
# metadata to stderr
curl -A "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)" -v $@
