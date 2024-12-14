import Foundation

func russianRoulette() {
    var chambers = [false, false, false, false, false]
    chambers.append(true)  // 1 chamber with a bullet
    chambers.shuffle()  // Shuffle the chambers

    print("Welcome to Russian Roulette!")
    _ = readLine()  // Wait for Enter key

    if chambers[0] {
        print("Bang! You're dead!")
    } else {
        print("Click. You're safe... for now.")
    }
}

russianRoulette()
