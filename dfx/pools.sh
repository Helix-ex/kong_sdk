#!/usr/bin/env bash

if [ -z "$1" ]
	then
		NETWORK=""
	else
		NETWORK="--network $1"
fi

KONG_CANISTER=$(dfx canister id ${NETWORK} kong_backend)

dfx canister call ${NETWORK} ${KONG_CANISTER} pools --output json '(null)'
#dfx canister call ${NETWORK} ${KONG_CANISTER} pools '(opt "ICP_ckUSDC")'
# dfx canister call ${NETWORK} ${KONG_CANISTER} pools '(opt "ckUSDT_ckUSDC")'
# dfx canister call ${NETWORK} ${KONG_CANISTER} pools '(opt "ckBTC_ckUSDC")'
# dfx canister call ${NETWORK} ${KONG_CANISTER} pools '(opt "ckETH_ckUSDC")'
# dfx canister call ${NETWORK} ${KONG_CANISTER} pools '(opt "KONG_ckUSDC")'