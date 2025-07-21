#!/bin/bash

revert() {
    rm /tmp/screen.png
}

scrot -d 1 /tmp/screen.png
magick /tmp/screen.png -blur 0x3 /tmp/screen.png

i3lock -i /tmp/screen.png
revert
