#!/bin/bash

echo 'printing keystore for Org1'

ORG_1_KEYSTORE=$(ls ../../fabric-samples/raft-5node-swarm/crypto-config/peerOrganizations/org1.example.com/users/Admin\@org1.example.com/msp/keystore/)
ORG_2_KEYSTORE=$(ls ../../fabric-samples/raft-5node-swarm/crypto-config/peerOrganizations/org2.example.com/users/Admin\@org2.example.com/msp/keystore/)
ORG_3_KEYSTORE=$(ls ../../fabric-samples/raft-5node-swarm/crypto-config/peerOrganizations/org3.example.com/users/Admin\@org3.example.com/msp/keystore/)
ORG_4_KEYSTORE=$(ls ../../fabric-samples/raft-5node-swarm/crypto-config/peerOrganizations/org4.example.com/users/Admin\@org4.example.com/msp/keystore/)
ORG_5_KEYSTORE=$(ls ../../fabric-samples/raft-5node-swarm/crypto-config/peerOrganizations/org5.example.com/users/Admin\@org5.example.com/msp/keystore/)

ORG_1_PATH_TO_KEYSTORE="Admin@org1.example.com/msp/keystore/"
ORG_2_PATH_TO_KEYSTORE="Admin@org2.example.com/msp/keystore/"
ORG_3_PATH_TO_KEYSTORE="Admin@org3.example.com/msp/keystore/"
ORG_4_PATH_TO_KEYSTORE="Admin@org4.example.com/msp/keystore/"
ORG_5_PATH_TO_KEYSTORE="Admin@org5.example.com/msp/keystore/"

UPDATED_KEYSTORE_ORG_1="$ORG_1_PATH_TO_KEYSTORE$ORG_1_KEYSTORE"
UPDATED_KEYSTORE_ORG_2="$ORG_2_PATH_TO_KEYSTORE$ORG_2_KEYSTORE"
UPDATED_KEYSTORE_ORG_3="$ORG_3_PATH_TO_KEYSTORE$ORG_3_KEYSTORE"
UPDATED_KEYSTORE_ORG_4="$ORG_4_PATH_TO_KEYSTORE$ORG_4_KEYSTORE"
UPDATED_KEYSTORE_ORG_5="$ORG_5_PATH_TO_KEYSTORE$ORG_5_KEYSTORE"

echo $UPDATED_KEYSTORE_ORG_1

# sed -i "s|keystore/.*|${UPDATED_KEYSTORE}|g" connection.yaml
# .* is regex-ese for "any character followed by zero or more of any character(s)"

echo 'updating connection.yaml Org1 adminPrivateKey path with' ${UPDATED_KEYSTORE_ORG_1}

sed -i '' "s|Admin@org1.example.com/msp/keystore/.*|$UPDATED_KEYSTORE_ORG_1|g" connection.yaml

echo 'updating connection.yaml Org2 adminPrivateKey path with' ${UPDATED_KEYSTORE_ORG_2}

sed -i '' "s|Admin@org2.example.com/msp/keystore/.*|$UPDATED_KEYSTORE_ORG_2|g" connection.yaml

echo 'updating connection.yaml Org3 adminPrivateKey path with' ${UPDATED_KEYSTORE_ORG_3}

sed -i '' "s|Admin@org3.example.com/msp/keystore/.*|$UPDATED_KEYSTORE_ORG_3|g" connection.yaml

echo 'updating connection.yaml Org4 adminPrivateKey path with' ${UPDATED_KEYSTORE_ORG_4}

sed -i '' "s|Admin@org4.example.com/msp/keystore/.*|$UPDATED_KEYSTORE_ORG_4|g" connection.yaml

echo 'updating connection.yaml Org5 adminPrivateKey path with' ${UPDATED_KEYSTORE_ORG_5}

sed -i '' "s|Admin@org5.example.com/msp/keystore/.*|$UPDATED_KEYSTORE_ORG_5|g" connection.yaml
