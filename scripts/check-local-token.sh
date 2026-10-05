#!/usr/bin/env bash
set -euo pipefail

MINT="5TaAbZsNNsrhczry7brHbqwmCYpVP2qncVqYMrke2qXd"

echo "=== NPC ENERGY LOCAL TEST ==="
echo
echo "RPC:"
solana config get
echo
echo "Wallet:"
solana address
echo
echo "Balance:"
solana balance
echo
echo "Token:"
spl-token display "$MINT"
echo
echo "Wallet token balance:"
spl-token balance "$MINT"
