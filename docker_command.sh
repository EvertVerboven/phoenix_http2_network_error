#!/bin/bash
cd /application/foo \
    && mix local.hex --force \
    && mix local.rebar --force \
    && mix deps.get \
    && mix clean

cd /application/foo \
    && mix compile \
    && mix phx.server
