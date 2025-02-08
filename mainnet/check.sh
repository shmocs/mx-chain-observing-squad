#!/bin/bash

curl -s http://mvx.prosolver.ro:8079/network/status/0 | jq
curl -s http://mvx.prosolver.ro:8079/network/status/1 | jq
curl -s http://mvx.prosolver.ro:8079/network/status/2 | jq

grep='(erd_node_display_name|app_version|erd_is_syncing|shard_id)'

curl -s http://mvx.prosolver.ro:8090/node/status | jq |grep -E $grep
echo
curl -s http://mvx.prosolver.ro:8091/node/status | jq |grep -E $grep
echo
curl -s http://mvx.prosolver.ro:8092/node/status | jq |grep -E $grep
echo
curl -s http://mvx.prosolver.ro:8093/node/status | jq |grep -E $grep
echo
