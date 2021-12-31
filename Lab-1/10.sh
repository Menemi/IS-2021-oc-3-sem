#!/bin/bash
man bash | grep -o -i "[[:alnum:]]\{4,\}" | sort | uniq -c | sort -n | tail -3