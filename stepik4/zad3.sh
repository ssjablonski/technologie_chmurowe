#!/bin/bash

# Wyświetl zużycie przestrzeni dyskowej przez wszystkie woluminy Docker
docker system df -v | awk '/Volumes space usage:/,/Build cache usage:/ {print $0}' | awk 'NR>2 {print $1, $3, $5}'