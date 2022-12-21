#!/bin/sh
#

echo
echo "This script will send 10 Http Collector events and override the default metadata."
echo "Enter a short message?"
    read msg

max=10
index="itops"
sourcetype="temperature"

echo "About to send HEC events with your message ${msg} to index ${index}..."
echo "Press 'y' to continue or any to abort:"
read answer

if [ "$answer" = "y" ] ; then
  for i in `seq 1 $max`
  do
    d1=$(shuf -i '0-3' -n '1')
    source="sensor_$d1"
    code="30$d1"
    case $d1 in
      0)
        status="OK";;
      1)
        status="Warm";;
      2)
        status="Hot";;
      3)
        status="Critical";;
    esac

    curl "https://http-inputs-${H_SERVER}:443/services/collector/event" -H "Authorization: Splunk ${H_TOKEN}" -d '{"index":"'"$index"'", "host":"'"$HOSTNAME"'", "sourcetype":"'"$sourcetype"'", "source":"'"$source"'","event":{"code":"'"$code"'","status":"'"$status"'","message":"'"$msg"'"}}'
    echo
  done
fi
