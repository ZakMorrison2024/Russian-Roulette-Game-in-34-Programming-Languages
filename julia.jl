function russian_roulette()
    chambers = [false, false, false, false, false, true]  # 1 chamber with a bullet
    shuffle!(chambers)  # Shuffle chambers

    println("Welcome to Russian Roulette!")
    nothing = readline()  # Wait for Enter key

    if chambers[1]
        println("Bang! You're dead!")
    else
        println("Click. You're safe... for now.")
    end
end

russian_roulette()
