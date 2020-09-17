#!/bin/bash

APIKEY=`cat apikeys`
FORECAST=`curl "http://api.openweathermap.org/data/2.5/weather?units=imperial&q=Austin&APPID=$APIKEY"`
echo $FORECAST | jq '. | {City: .name, Temp: .main.temp, High: .main.temp_max, Low: .main.temp_min, Weather: .weather[0].main}'