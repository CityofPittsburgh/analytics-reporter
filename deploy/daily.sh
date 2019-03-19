#!/bin/bash

# City-wide
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv

# Burgh's Eye View
source $ANALYTICS_ROOT_PATH/deploy/envs/burghs-eye-view.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv

# Fire Recruitment
source $ANALYTICS_ROOT_PATH/deploy/envs/fire-recruitment.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv

# My Brother's Keeper
source $ANALYTICS_ROOT_PATH/deploy/envs/my-brothers-keeper.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv

# OnePGH
source $ANALYTICS_ROOT_PATH/deploy/envs/one-pgh.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv

# OneStopPGH
source $ANALYTICS_ROOT_PATH/deploy/envs/one-stop-pgh.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv

# Pittsburgh Parking Authority
source $ANALYTICS_ROOT_PATH/deploy/envs/pittsburgh-parking-authority.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv

# Pittsburgh Purchasing Authority
source $ANALYTICS_ROOT_PATH/deploy/envs/pittsburgh-purchasing.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv

# Police Recruitment
source $ANALYTICS_ROOT_PATH/deploy/envs/police-recruitment.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=daily --slim --verbose --csv
