# suitools

This repo contains open source tooling created by Scale3 Labs for monitoring and maintaining your Sui nodes. 

Check out www.scale3labs.com for more. 

# Sui Docker Upgrade Script

The script will upgrade your existing node to the latest Sui node software and start the sui node daemon.

If you don't currently run a node, checkout our guide for setting up a Sui node on Docker. https://medium.com/scale3-labs/setup-and-run-a-sui-full-node-a4f3224e71c3

To use the Sui Docker update script login to your Sui node via ssh and follow these steps:

- Download the script

```script
cd $HOME/sui;
curl https://raw.githubusercontent.com/Scale3-Labs/suitools/main/scripts/upgrade_suidocker.sh 
```

- Change permissions
```
chmod a+x upgrade_suidocker.sh
```
- Execute the script
```
./upgrade_suidocker.sh
```

# Sui Node Checker
## Devnet 
Use this to validate
https://www.scale3labs.com/check/sui/devnet

## Sui Nodes Monitoring Dashboard
Sign up to request early access here https://gzr9hedzug3.typeform.com/to/yVT5CA3h

## Join our Discord 
https://discord.com/invite/h74CkNv4h9
