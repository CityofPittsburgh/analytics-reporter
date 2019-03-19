const spawn = require("child_process").spawn;
const winston = require("winston-color")

if (process.env.NEW_RELIC_APP_NAME) {
	winston.info("Starting New Relic")
	require("newrelic")
} else {
	winston.warn("Skipping New Relic Activation")
}

const scriptRootPath = `${process.env.ANALYTICS_ROOT_PATH}/deploy`

var daily_run = function() {
	winston.info("about to run daily.sh");

	var daily = spawn(`${scriptRootPath}/daily.sh`)
	daily.stdout.on("data", (data) => {
		winston.info("[daily.sh]", data.toString().trim())
	})
	daily.stderr.on("data", (data) => {
		winston.info("[daily.sh]", data.toString().trim())
	})
	daily.on("exit", (code) => {
		winston.info("daily.sh exitted with code:", code)
	})
}

var hourly_run = function(){
	winston.info("about to run hourly.sh");

	var hourly = spawn(`${scriptRootPath}/hourly.sh`)
	hourly.stdout.on("data", (data) => {
		winston.info("[hourly.sh]", data.toString().trim())
	})
	hourly.stderr.on("data", (data) => {
		winston.info("[hourly.sh]", data.toString().trim())
	})
	hourly.on("exit", (code) => {
		winston.info("hourly.sh exitted with code:", code)
	})
}

var realtime_run = function(){
	winston.info("about to run realtime.sh");

	var realtime = spawn(`${scriptRootPath}/realtime.sh`)
	realtime.stdout.on("data", (data) => {
		winston.info("[realtime.sh]", data.toString().trim())
	})
	realtime.stderr.on("data", (data) => {
		winston.info("[realtime.sh]", data.toString().trim())
	})
	realtime.on("exit", (code) => {
		winston.info("realtime.sh exitted with code:", code)
	})
}

/**
	Daily reports run every morning at 10 AM UTC.
	This calculates the offset between now and then for the next scheduled run.
*/
var calculateNextDailyRunTimeOffset = function(){
	const currentTime = new Date();
	const nextRunTime = new Date(
		currentTime.getFullYear(),
		currentTime.getMonth(),
		currentTime.getDate() + 1,
		10 - currentTime.getTimezoneOffset() / 60
	);
	return (nextRunTime - currentTime) % (1000 * 60 * 60 * 24)
}

winston.info("starting cron.js!");
daily_run();
hourly_run();
realtime_run();
//daily
setTimeout(() => {
	// Run at 10 AM UTC, then every 24 hours afterwards
	daily_run();
	setInterval(daily_run, 1000 * 60 * 60 * 24);
}, calculateNextDailyRunTimeOffset());
//hourly
setInterval(hourly_run,1000 * 60 * 60);
//realtime
setInterval(realtime_run,1000 * 60 * 5);
