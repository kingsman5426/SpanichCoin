#!/usr/bin/env bash

ROOT_PATH=$(cd "$(dirname $(dirname "${BASH_SOURCE[0]}"))" >/dev/null 2>&1 && pwd)
BRIDGECHAIN_PATH="$HOME/core-bridgechain"
BRIDGECHAIN_PATH_RAW="\$HOME/core-bridgechain"
EXPLORER_PATH="$HOME/core-explorer"
EXPLORER_PATH_RAW="\$HOME/core-explorer"
CHAIN_NAME="bridgechain"
TOKEN="MINE"
CORE_ALIAS="mine"
CLI_ALIAS="CHAIN_NAME" # Used to determine whether to use CHAIN_NAME or TOKEN in in the "CORE_ALIAS" var
DATABASE_HOST="localhost"
DATABASE_PORT="5432"
DATABASE_NAME="core_$CHAIN_NAME"
CORE_IP="0.0.0.0"
P2P_PORT="4102"
API_PORT="4103"
WEBHOOK_PORT="4104"
JSON_RPC_PORT="8080"
EXPLORER_IP="127.0.0.1"
EXPLORER_PORT="4200"
EXPLORER_URL="http://$EXPLORER_IP:$EXPLORER_PORT"
SYMBOL="M"
MAINNET_PEERS=""
DEVNET_PEERS=""
MAINNET_PREFIX="M"
DEVNET_PREFIX="D"
TESTNET_PREFIX="T"
INSTALL_DEPS="N"
SKIP_DEPS="N"
INTERACTIVE="Y"
if [[ $METHOD == "install-explorer" ]]; then
    CORE_IP="127.0.0.1"
    EXPLORER_IP="0.0.0.0"
fi

## Constants
## Fees - Static
FEE_STATIC_TRANSFER=10000000
FEE_STATIC_VOTE=100000000
FEE_STATIC_SECOND_SIGNATURE=500000000
FEE_STATIC_DELEGATE_REGISTRATION=2500000000
FEE_STATIC_MULTISIG_REGISTRATION=500000000

## Fees - Dynamic
FEE_DYNAMIC_ENABLED="N"
FEE_DYNAMIC_POOL_MIN_FEE=3000
FEE_DYNAMIC_BROADCAST_MIN_FEE=3000
FEE_DYNAMIC_BYTES_TRANSFER=100
FEE_DYNAMIC_BYTES_SECOND_SIGNATURE=250
FEE_DYNAMIC_BYTES_DELEGATE_REGISTRATION=400000
FEE_DYNAMIC_BYTES_VOTE=100
FEE_DYNAMIC_BYTES_MULTISIG_REGISTRATION=500
FEE_DYNAMIC_BYTES_IPFS=250
FEE_DYNAMIC_BYTES_HTLC_LOCK=500
FEE_DYNAMIC_BYTES_HTLC_CLAIM=0
FEE_DYNAMIC_BYTES_HTLC_REFUND=0
FEE_DYNAMIC_BYTES_MULTIPAYMENT=500
FEE_DYNAMIC_BYTES_DELEGATE_RESIGNATION=400000
FEE_DYNAMIC_BYTES_BUSINESS_REGISTRATION=4000000
FEE_DYNAMIC_BYTES_BUSINESS_UPDATE=500
FEE_DYNAMIC_BYTES_BUSINESS_RESIGNATION=100
FEE_DYNAMIC_BYTES_BRIDGECHAIN_REGISTRATION=4000000

## Forging Delegates
FORGERS=51

## Block time (seconds)
BLOCK_TIME=8

## Max Transactions per Block
TXS_PER_BLOCK=150

## Total Premined Tokens
TOTAL_PREMINE=2100000000000000

## Rewards
## Start Block Height
REWARD_HEIGHT_START=75600
## ARK reward per Block
REWARD_PER_BLOCK=200000000

## VendorField/SmartBridge Length
VENDORFIELD_LENGTH=255

## Flag to indicate if args has been processed
ARGS_PROCESSED="N"

## Flag to indicate if JSON config has been processed
CONFIG_PROCESSED="N"

## Start core options
AUTO_FORGER="Y"
FORCE_NETWORK_START="N"
NETWORK=""

## Git
GIT_CORE_COMMIT="N"
GIT_CORE_ORIGIN=""
GIT_EXPLORER_COMMIT="N"
GIT_EXPLORER_ORIGIN=""
GIT_USE_SSH="N"

## License
LICENSE_NAME=""
LICENSE_EMAIL=""
