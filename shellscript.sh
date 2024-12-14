#!/bin/bash

russian_roulette() {
    chambers=(false false false false false)
    chambers+=("true")  # 1 chamber with a bullet
    chambers=($(shuf -e "${chambers[@]}"))  # Shuffle chambers

    echo "Welcome to Russian Roulette!"
    read -p "Press Enter to pull the trigger..."

    if [[ "${chambers[0]}" == "true" ]]; then
        echo "Bang! You're dead!"
    else
        echo "Click. You're safe... for now."
    fi
}

russian_roulette
