# kong_sdk
Kong Swap SDK

./dfx dfx scripts for interacting with the Kong Swap canister

1. you need to a dfx identity - dfx identity new
2. faucet.sh - claim free test tokens
3. you're ready to do a swap. There are two ways:
   - swap_approve.sh - using the icrc2_approve/icrc2_transfer_from pattern
   - swap_transfer.sh - using the icrc1_transfer pattern

If you want to use mainnet, you need to call the scripts with "ic" argument
ie. ./swap_transfer.sh ic
