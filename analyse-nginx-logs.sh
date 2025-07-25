#!/bin/bash

# Reference
# https://mauricius.dev/parse-log-files-with-awk/

# Get the first column (IP addresses) from logs.txt,
# count unique occurrences, and sort them in reverse numerical order.
# The output will show the number of requests per IP address.
awk '{print $1}' logs.txt | sort | uniq --c | sort -rn

# To filter out IP addresses with more than 30 requests,
# awk '{print $1}' logs.txt | sort | uniq --c | sort -rn | awk '$1>30{print}'