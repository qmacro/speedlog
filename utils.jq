# The Ookla Speedtest data in JSON format returns upload and download
# meaurements in bits, in the 'bandwidth' property. To convert to the
# more human-readable Mbps values we must divide by 125000. See this
# https://community.openhab.org/t/speedtest-cli-by-ookla-internet-up-downlink-measurement-integration/94447 for more info. Also, to get a result
# to 2 decimal places, some rounding and division shenanigans is needed.
def bandwidthToMbps:
  . / 1250 | round / 100;

# Convert timestamp (e.g. "2022-04-27T08:00:40Z") to TZ-sensitive time.
def tztime:
  strptime("%Y-%m-%dT%H:%M:%SZ") | mktime | localtime | strftime("%H:%M:%S");
