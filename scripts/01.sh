#!/bin/bash
cat /etc/passwd | grep -v "#" | awk -F ':' '{print $1 " " $3 " " $6}' | column -t
