#!/usr/bin/env bash

mix deps.get --only brain
MIX_ENV=prod mix compile

#npm install --prefix ./apps/webserver/assets
#npm run deploy --prefix ./apps/webserver/assets

#mix phx.digest

MIX_ENV=prod mix release brain --overwrite
