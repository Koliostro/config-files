#!/bin/bash

function working_time() {
    uptime | cut -f 4-5 -d ' ' | cut -f 1 -d ',' | tr '\n' '|'
}

function current_time() {
    date "+%H : %M"
}

function battary_charge() {
    cat /sys/class/power_supply/BAT1/capacity | xargs echo -n && echo -n "% |"
}

function is_charged() {
    cat /sys/class/power_supply/BAT1/status | xargs echo -n && echo -n ' |'
}

function main() {
    is_charged
    battary_charge
    working_time
    current_time
}

main
