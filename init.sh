#!/bin/bash

export templdpath="${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="${BOX64_LD_LIBRARY_PATH}"
export SteamAppId=343050
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
export DEBUGGER="/usr/local/bin/box64"

cd /root/steam/steamapps/common/Don\'t\ Starve\ Together\ Dedicated\ Server/bin

echo "Starting server"

exec box64 ./dontstarve_dedicated_server_nullrenderer -console -cluster Cluster_1 -shard Master && ./dontstarve_dedicated_server_nullrenderer -console -cluster Cluster_1 -shard Caves

