#!/bin/bash

# Government Wide
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Burgh's Eye View
source $ANALYTICS_ROOT_PATH/deploy/envs/burghs-eye-view.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Fire Recruitment
source $ANALYTICS_ROOT_PATH/deploy/envs/fire-recruitment.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# My Brother's Keeper
source $ANALYTICS_ROOT_PATH/deploy/envs/my-brothers-keeper.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# OnePGH
source $ANALYTICS_ROOT_PATH/deploy/envs/one-pgh.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# OneStopPGH
source $ANALYTICS_ROOT_PATH/deploy/envs/one-stop-pgh.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Pittsburgh Parking Authority
source $ANALYTICS_ROOT_PATH/deploy/envs/pittsburgh-parking-authority.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Pittsburgh Purchasing
source $ANALYTICS_ROOT_PATH/deploy/envs/pittsburgh-purchasing.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose

# Police Recruitment
source $ANALYTICS_ROOT_PATH/deploy/envs/police-recruitment.env
$ANALYTICS_ROOT_PATH/bin/analytics --publish --frequency=hourly --slim --verbose
