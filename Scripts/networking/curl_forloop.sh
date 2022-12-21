#!/bin/bash
max=10
for i in `seq 1 $max`
do
  event="Hello World $i"
  curl  "https://http-inputs-${H_SERVER}:443/services/collector/event" -H "Authorization: Splunk ${H_TOKEN}" -d '{"event":"'"$event"'"}'
  echo
done
