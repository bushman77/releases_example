#!/usr/bin/env bash
rm -rf ./apps/webserver/assets/node_modules
mix deps.get --only prod
MIX_ENV=prod mix compile

npm install --prefix ./apps/webserver/assets
npm run deploy --prefix ./apps/webserver/assets

mix phx.digest

rm -rf "_build"
MIX_ENV=prod mix release prod
