#!/bin/bash

world="$SOZO_WORLD"

commands=(
    "sozo execute --world $world CreateRealm --calldata 1,0x06f62894bfd81d2e396ce266b2ad0f21e0668d604e5bb1077337b6d570a54aea,1,1,1,1,1,1,1,1,100000,200000"
    "sozo execute --world $world CreateRealm --calldata 2,0x06f62894bfd81d2e396ce266b2ad0f21e0668d604e5bb1077337b6d570a54aea,1,1,1,1,1,1,1,1,200000,1000000"
)

for cmd in "${commands[@]}"; do
    echo "Executing command: $cmd"
    output=$(eval "$cmd")
    echo "Output:"
    echo "$output"
    echo "--------------------------------------"
done