function russianRoulette() {
    let chambers = [false, false, false, false, false];
    chambers.push(true);  // 1 chamber with a bullet
    chambers.sort(() => Math.random() - 0.5);  // Shuffle array

    console.log("Welcome to Russian Roulette!");
    let userInput = prompt("Press Enter to pull the trigger...");

    if (chambers[0]) {
        console.log("Bang! You're dead!");
    } else {
        console.log("Click. You're safe... for now.");
    }
}

russianRoulette();
