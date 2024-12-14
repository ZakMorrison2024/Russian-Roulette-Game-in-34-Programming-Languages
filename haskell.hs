import System.Random

russianRoulette :: IO ()
russianRoulette = do
    let chambers = replicate 5 False ++ [True]  -- 5 empty chambers, 1 with a bullet
    g <- newStdGen
    let shuffledChambers = shuffle g chambers
    putStrLn "Welcome to Russian Roulette!"
    _ <- getLine  -- Wait for Enter key
    if head shuffledChambers
        then putStrLn "Bang! You're dead!"
        else putStrLn "Click. You're safe... for now."

shuffle :: RandomGen g => g -> [a] -> [a]
shuffle g xs = fst $ mapAccumL (\g' _ -> let (i, g'') = randomR (0, length xs - 1) g' in (g'', i)) g xs

main :: IO ()
main = russianRoulette
