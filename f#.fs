open System

let russianRoulette () =
    let chambers = [|false; false; false; false; false; true|]
    let rng = new Random()
    Array.shuffle chambers // Shuffle the chambers

    printfn "Welcome to Russian Roulette!"
    Console.ReadLine()  // Wait for Enter key

    if chambers.[0] then
        printfn "Bang! You're dead!"
    else
        printfn "Click. You're safe... for now."

[<EntryPoint>]
let main argv =
    russianRoulette ()
    0 // return an integer exit code
