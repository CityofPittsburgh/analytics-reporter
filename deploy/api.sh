#!/bin/bash

export ANALYTICS_REPORTS_PATH=reports/api.json

# Gov Wide
$ANALYTICS_ROOT_PATH/bin/analytics --verbose --write-to-database --output /tmp

# example agency: Department of Education
# source $ANALYTICS_ROOT_PATH/deploy/envs/education.env
# $ANALYTICS_ROOT_PATH/bin/analytics --verbose --write-to-database --output /tmp
