#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./launch.sh devnet
#   ./launch.sh mainnet
#
# This script deliberately stops before authority revocation so you can verify
# the mint/supply first.

NETWORK="${1:-devnet}"

if [ "$NETWORK" = "devnet" ]; then
  solana config set --url https://api.devnet.solana.com
else
  solana config set --url https://api.mainnet-beta.solana.com
fi

echo "Wallet:"
solana address
echo
echo "Balance:"
solana balance

echo "Creating 6-decimal Token-2022 mint with metadata support..."
MINT=$(spl-token --program-2022 create-token --decimals 6 --enable-metadata | awk '/Creating token/ {print $3}' | tail -1)

echo "MINT=$MINT"
echo "$MINT" > .mint

echo "Creating token account..."
spl-token --program-2022 create-account "$MINT"

echo "Minting exactly 1,000,000,000 NPC..."
spl-token --program-2022 mint "$MINT" 1000000000

echo
echo "Supply:"
spl-token --program-2022 supply "$MINT"

echo
echo "IMPORTANT: verify the mint address and supply before revoking authorities."
echo "Then initialize metadata with your final public metadata URI, for example:"
echo 'spl-token --program-2022 initialize-metadata "$MINT" "NPC ENERGY" "NPC" "https://YOUR-DOMAIN/metadata.json"'
echo
echo "After verification, revoke mint authority and freeze authority using the"
echo "authority command supported by your installed SPL Token CLI version."
