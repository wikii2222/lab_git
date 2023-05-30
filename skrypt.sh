#!/bin/bash

if [ "$1" = "--date" ]; then
    date
fi

if [ "$1" = "--logs" ]; then
    for ((i=1; i<=100; i++)); do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
fi