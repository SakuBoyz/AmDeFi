
export CHANNEL_NAME=origin
# Update the anchor peers 

docker exec -e "CORE_PEER_LOCALMSPID=Org3MSP" -e "CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/msp/users/Admin@org3.example.com/msp" peer0.org3.example.com peer channel update -o orderer.example.com:7050 -c $CHANNEL_NAME -f /etc/hyperledger/configtx/Org3MSPanchors.tx

