#!/usr/bin/env bash
export PATH="/Users/riyush7/.gemini/antigravity/tools/node-v22.14.0-darwin-arm64/bin:$PATH"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo "🔐 Logging in to Expo CLI as riyush_7..."
npx expo login
