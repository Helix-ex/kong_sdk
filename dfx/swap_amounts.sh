#!/usr/bin/env bash

if [ -z "$1" ]
	then
		NETWORK=""
	else
		NETWORK="--network $1"
fi
IDENTITY="--identity konguser1"	# cannot be mint account

KONG_CANISTER=$(dfx canister id ${NETWORK} kong_backend)

dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ICP", 0, "ckUSDC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ICP", 425_500, "ckUSDC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckUSDC", 0, "ICP")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckUSDC", 600_000_000, "ICP")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckBTC", 0, "ckUSDC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckBTC", 155_200, "ckUSDC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckUSDC", 0, "ckBTC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckUSDC", 1_500_000_000, "ckBTC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckETH", 0, "ckUSDC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckETH", 32_467_532_467_532_500, "ckUSDC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckUSDC", 0, "ckETH")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckUSDC", 850_000_000, "ckETH")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("KONG", 0, "ckUSDC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("KONG", 15_000_000_000_000, "ckUSDC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckUSDC", 0, "KONG")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckUSDC", 725_000_000, "KONG")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ICP", 0, "ckBTC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ICP", 15_000_000, "ckBTC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckBTC", 0, "ICP")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckBTC", 130_000, "ICP")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ICP", 0, "ckETH")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ICP", 15_000_000, "ckETH")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckETH", 0, "ICP")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckETH", 130_000_000_000_000_000, "ICP")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ICP", 0, "KONG")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ICP", 15_000_000, "KONG")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("KONG", 0, "ICP")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("KONG", 80_230_000_000_000, "ICP")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckBTC", 0, "ckETH")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckBTC", 250_000, "ckETH")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckETH", 0, "ckBTC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckETH", 734_234_134_000_000_000, "ckBTC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckBTC", 0, "KONG")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckBTC", 1_250_000_000, "KONG")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("KONG", 0, "ckBTC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("KONG", 4_280_000_000_000, "ckBTC")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckETH", 0, "KONG")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("ckETH", 60_000_000_000_000_000_000, "KONG")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("KONG", 0, "ckETH")'
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap_amounts '("KONG", 120_000_000_000_000, "ckETH")'
