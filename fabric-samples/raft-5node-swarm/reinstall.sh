echo '---------------------노드 재시작--------------------------------'
./host1Start.sh
sleep 5

docker exec cli peer channel join -b mychannel.block



