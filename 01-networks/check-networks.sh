#!/bin/bash

echo "DNS test:"
nslookup google.com

echo
echo "Ping test:"
ping -n 2 8.8.8.8

echo
echo "HTTP test:"
curl -s https://httpbin.org/ip
