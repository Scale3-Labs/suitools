#!/bin/bash
# Use this script to cleanup, build and install a new version of Sui node from source.

echo '-------------------------------------'
echo $(date)

echo '-------------------------------------'
echo "Cleaning up previous installation..."
cd $HOME/sui
echo "Stopping and removing Sui docker container and volume..."
sudo docker-compose down --rmi all -v --remove-orphans
if [ $? -eq 0 ]
then
  echo "Removing genesis.blob file..."
  rm -rf genesis.blob
  echo "Done cleaning up"
fi

echo '-----------------------------------------------------------------------------'
echo "Downloading new Sui Genesis ..."
curl -fLJO https://github.com/MystenLabs/sui-genesis/raw/main/devnet/genesis.blob

echo "Starting new Sui node"
docker-compose up -d --force-recreate
if [ $? -eq 0 ]
then
  echo '----------------------------------------------------------------------------'
  echo "Getting logs from Sui node..."
  docker logs sui-fullnode-1
  echo '----------------------------------------------------------------------------'
  echo "Successfully started Sui..." 
  printf "Use the Scale3Labs Sui checker tool '\U1F984\n' https://www.scale3labs.com/check/sui '\U1F984\n' to verify your node is syncing."
else
  echo "Failed to start new Sui node."
fi