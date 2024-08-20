#!/usr/bin/env bash

if [ -z "$1" ]
	then
		NETWORK=""
	else
		NETWORK="--network $1"
fi
IDENTITY="--identity konguser1"	# cannot be mint account

KONG_CANISTER=$(dfx canister id ${NETWORK} kong_backend)

PAY_SYMBOL="ICP"
PAY_TOKEN_LEDGER=$(dfx canister id ${NETWORK} $(echo ${PAY_SYMBOL} | tr '[:upper:]' '[:lower:]')_ledger)
PAY_AMOUNT=1_000_000_000
PAY_AMOUNT=${PAY_AMOUNT//_/}    # remove underscore
RECEIVE_SYMBOL="ckUSDC"
RECEIVE_TOKEN_LEDGER=$(dfx canister id ${NETWORK} $(echo ${RECEIVE_SYMBOL} | tr '[:upper:]' '[:lower:]')_ledger)
RECEIVE_AMOUNT=5_000_000
RECEIVE_AMOUNT=${RECEIVE_AMOUNT//_/}
MAX_SLIPPAGE=1.0					      # 1%
EXPIRES_AT=$(echo "$(date +%s)*1000000000 + 60000000000" | bc)  # 60 seconds from now

# 2. submit icrc1_transfer to allow canister to transfer pay token from the caller
STATE1_START=$SECONDS
TRANSFER_BLOCK_INDEX=$(dfx canister call ${NETWORK} ${IDENTITY} ${PAY_TOKEN_LEDGER} icrc1_transfer "(record {
    to = record {
        owner = principal \"${KONG_CANISTER}\";
        subaccount = null;
    };
    amount = $(echo "${PAY_AMOUNT}" | bc);
})" | awk -F'=' '{print $2}' | awk '{print $1}')
STATE1_FINISH=$SECONDS

echo
echo "icrc1_transfer block index: ${TRANSFER_BLOCK_INDEX}"
echo "STATE1_DURATION: $((STATE1_FINISH - STATE1_START)) seconds"

# 3. submit swap to kingkongswap canister
STATE2_START=$SECONDS
dfx canister call ${NETWORK} ${IDENTITY} ${KONG_CANISTER} swap "(record {
    pay_symbol = \"${PAY_SYMBOL}\";
    pay_amount = ${PAY_AMOUNT};
    receive_symbol = \"${RECEIVE_SYMBOL}\";
    receive_amount = opt ${RECEIVE_AMOUNT};
    max_slippage = opt ${MAX_SLIPPAGE};
    transfer_block_index = opt ${TRANSFER_BLOCK_INDEX};
})"
STATE2_FINISH=$SECONDS

echo
echo "kong canister swap()"
echo "STATE2_DURATION: $((STATE2_FINISH - STATE2_START)) seconds"