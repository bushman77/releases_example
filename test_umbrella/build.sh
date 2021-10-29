#!/usr/bin/env bash

mix deps.get --only dev
MIX_ENV=dev mix compile

#npm install --prefix ./apps/webserver/assets
#npm run deploy --prefix ./apps/webserver/assets

#mix phx.digest

MIX_ENV=dev mix release dev
