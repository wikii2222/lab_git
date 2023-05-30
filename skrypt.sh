#!/bin/bash

if [ "$1" = "--date" ]; then
    date
fi

if [ "$1" = "--logs" ]; then
    if [ -n "$2" ]; then
        count="$2"
    else
        count=100
    fi
    
    for ((i=1; i<=count; i++)); do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
fi

if [ "$1" = "--help" ]; then
    echo "Dostępne opcje:"
    echo "- skrypt.sh --date: Wyświetla dzisiejszą datę"
    echo "- skrypt.sh --logs: Tworzy automatycznie 100 plików logx.txt z informacjami o nazwie, skrypcie i dacie"
    echo "- skrypt.sh --logs <liczba>: Tworzy automatycznie określoną liczbę plików logx.txt z informacjami o nazwie, skrypcie i dacie"
    echo "- skrypt.sh --help: Wyświetla wszystkie dostępne opcje"
fi