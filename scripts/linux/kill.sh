#!/bin/bash

printf "..... kill process running on port [%s]\n", "${port}"

if [ -z "${port}" ]; then printf "... error - port undefined\n"; exit 1; fi

sudo kill -9 "$(sudo lsof -t -i:"${port}")"

printf "... killed process running on port [%s]\n", "${port}"