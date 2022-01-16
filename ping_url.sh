#!/bin/bash

if [ $exitcode -ne 0 ]; then
    # The /1 is just how healthchecks.io reports an error. Other services may be different.
    echo "Reporting error to $HEALTH_CHECK_URL/1"
    curl $HEALTH_CHECK_URL/1
else
    # Ran without issue. 
    curl $HEALTH_CHECK_URL
fi
