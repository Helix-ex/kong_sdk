#!/usr/bin/env bash

if [ -z "$1" ]
	then
		NETWORK=""
	else
		NETWORK="--network $1"
fi

KONG_CANISTER=$(dfx canister id ${NETWORK} kong_backend)

dfx canister call ${NETWORK} ${KONG_CANISTER} tokens --output json '(null)' | sed -e 's/^"//' -e 's/"$//' -e 's@\\@@g' | jq
#dfx canister call ${NETWORK} ${KONG_CANISTER} tokens --output json '(opt "KONG")' | sed -e 's/^"//' -e 's/"$//' -e 's@\\@@g' | jq