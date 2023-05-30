#!/bin/bash

if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
    date
fi

if [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
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

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Dostępne opcje:"
    echo "- skrypt.sh --date: Wyświetla dzisiejszą datę"
    echo "- skrypt.sh --logs: Tworzy automatycznie 100 plików logx.txt z informacjami o nazwie, skrypcie i dacie"
    echo "- skrypt.sh --logs <liczba>: Tworzy automatycznie określoną liczbę plików logx.txt z informacjami o nazwie, skrypcie i dacie"
    echo "- skrypt.sh --help: Wyświetla wszystkie dostępne opcje"
    echo "- skrypt.sh -d: Wyświetla dzisiejszą datę"
    echo "- skrypt.sh -l: Tworzy automatycznie 100 plików logx.txt z informacjami o nazwie, skrypcie i dacie"
    echo "- skrypt.sh -l <liczba>: Tworzy automatycznie określoną liczbę plików logx.txt z informacjami o nazwie, skrypcie i dacie"
    echo "- skrypt.sh -h: Wyświetla wszystkie dostępne opcje"
    echo "- skrypt.sh --init: Kolnuje całe repozytorium"
    echo "- skrypt.sh --error <liczba>: Tworzy pliki z errorem"
    echo "- skrypt.sh -e <liczba>: Tworzy pliki z errorem"
fi

if [ "$1" = "--init" ]; then
    git clone https://github.com/wikii2222/lab_git .
    export PATH=$PATH:$(pwd)
fi

if [ "$1" = "--error" ] || [ "$1" = "-e" ]; then
    if [ -n "$2" ]; then
        count="$2"
    else
        count=100
    fi
    
    for ((i=1; i<=count; i++)); do
        mkdir -p error$i
        echo "Nazwa pliku: error$i/error$i.txt" > error$i/error$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> error$i/error$i.txt
        echo "Data: $(date)" >> error$i/error$i.txt
    done
fi