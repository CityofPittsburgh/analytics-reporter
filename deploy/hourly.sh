#!/bin/bash

# Government Wide
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Burgh's Eye View
source $ANALYTICS_ROOT_PATH/deploy/envs/burghs-eye-view.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Fire Recruitment
source $ANALYTICS_ROOT_PATH/deploy/envs/fire-recruitment.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Pittsburgh Parking Authority
source $ANALYTICS_ROOT_PATH/deploy/envs/pittsburgh-parking-authority.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Police Recruitment
source $ANALYTICS_ROOT_PATH/deploy/envs/police-recruitment.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose
