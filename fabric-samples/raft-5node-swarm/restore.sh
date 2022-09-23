echo '---------------------노드 체인코드 복구 시작--------------------------------'

echo '---------------------노드 체인코드 재설치--------------------------------'
docker exec cli peer chaincode install -n contract -v 1.0 -p github.com/chaincode/contract/go/ 

echo '---------------------복구된 노드 체인코드 테스트 --------------------------------'
docker exec cli peer chaincode query -n contract -C mychannel -c '{"Args":["totalNumberContracts"]}'

echo '---------------------노드 체인코드 복구 완료--------------------------------'