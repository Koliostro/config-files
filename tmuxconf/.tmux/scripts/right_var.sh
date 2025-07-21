#!/bin/bash

function working_time() {
    uptime | cut -f 4-5 -d ' ' | cut -f 1 -d ',' | tr '\n' '|'
}

function current_time() {
    date "+%H : %M"
}

function main() {
    working_time
    current_time
}

main
