package main

import (
	"fmt"
	"math/rand"
	"time"
)

func russianRoulette() {
	chambers := []bool{false, false, false, false, false}
	chambers = append(chambers, true) // 1 chamber with a bullet
	rand.Seed(time.Now().UnixNano())
	rand.Shuffle(len(chambers), func(i, j int) { chambers[i], chambers[j] = chambers[j], chambers[i] })

	fmt.Println("Welcome to Russian Roulette!")
	fmt.Print("Press Enter to pull the trigger...")
	var input string
	fmt.Scanln(&input)

	if chambers[0] {
		fmt.Println("Bang! You're dead!")
	} else {
		fmt.Println("Click. You're safe... for now.")
	}
}

func main() {
	russianRoulette()
}
