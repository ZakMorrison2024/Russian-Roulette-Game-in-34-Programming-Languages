function russian_roulette()
    chambers = {false, false, false, false, false}
    table.insert(chambers, true)  -- 1 chamber with a bullet
    math.randomseed(os.time())
    for i = #chambers, 2, -1 do
        local j = math.random(i)
        chambers[i], chambers[j] = chambers[j], chambers[i]  -- Shuffle chambers
    end

    print("Welcome to Russian Roulette!")
    io.read()  -- Wait for Enter key

    if chambers[1] then
        print("Bang! You're dead!")
    else
        print("Click. You're safe... for now.")
    end
end

russian_roulette()
