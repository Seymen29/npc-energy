# NPC ENERGY ($NPC) — Solana Memecoin Launch Kit

A transparent, fixed-supply Solana meme-token starter.

## Token design
- Name: NPC ENERGY
- Symbol: NPC
- Supply: 1,000,000,000
- Decimals: 6
- Tax: 0%
- Team allocation: 0% in the proposed public-launch configuration
- Mint authority: revoke after final mint
- Freeze authority: revoke after launch
- No hidden transfer hook, permanent delegate, pause switch, or blacklist logic

## Important
This package does NOT contain a private key and cannot sign transactions for you.
Do not paste a seed phrase or private key into chat or into source files.

## Recommended launch sequence
1. Install Solana CLI + SPL Token CLI.
2. Create a fresh deployer wallet.
3. Test the complete flow on Devnet first.
4. Create the mint and mint exactly 1,000,000,000 NPC.
5. Verify supply and authorities.
6. Revoke mint and freeze authorities.
7. Publish metadata.
8. Only then consider a mainnet liquidity/launch venue.

Official Solana references:
- https://solana.com/docs/tokens/quickstart
- https://solana.com/docs/references/spl-token-cli
- https://solana.com/docs/tokens/basics/set-authority

## Current-market note
As of 2026-10-03, Solana meme launches remain highly active, with launchpads accounting for a large share of new token issuance. This is not evidence that any particular new token will succeed. Avoid fake volume, wash trading, undisclosed insider allocations, or promises of returns.

## Website
Open website/index.html locally in a browser.
Replace the placeholder MINT ADDRESS after launch.

## Metadata
metadata.json is a template. The image URI must point to a publicly accessible image after you upload the final logo.
