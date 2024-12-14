<?php

function russian_roulette() {
    $chambers = array(false, false, false, false, false);
    array_push($chambers, true);  // 1 chamber with a bullet
    shuffle($chambers);  // Shuffle the chambers

    echo "Welcome to Russian Roulette!\n";
    readline("Press Enter to pull the trigger...");

    if ($chambers[0]) {
        echo "Bang! You're dead!\n";
    } else {
        echo "Click. You're safe... for now.\n";
    }
}

russian_roulette();

?>
