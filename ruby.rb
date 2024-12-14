def russian_roulette
    chambers = [false, false, false, false, false]
    chambers.push(true)  # 1 chamber with a bullet
    chambers.shuffle!  # Shuffle the chambers

    puts "Welcome to Russian Roulette!"
    gets.chomp  # Wait for Enter key

    if chambers[0]
        puts "Bang! You're dead!"
    else
        puts "Click. You're safe... for now."
    end
end

russian_roulette
