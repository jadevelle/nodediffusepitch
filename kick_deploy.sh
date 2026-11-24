#!/usr/bin/env bash
set -e
LIB="zeta-deck.a"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/jadevelle/nodediffusepitch/releases/download/crimson-comet-hidden-cedar/zeta-deck.a"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
