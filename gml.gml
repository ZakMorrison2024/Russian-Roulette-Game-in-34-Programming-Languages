// Russian Roulette Game

// Initialize game variables
var chambers = [false, false, false, false, false, true]; // 5 empty chambers, 1 loaded chamber
var player_alive = true;

// Shuffle chambers
chambers = array_shuffle(chambers);

// Game start message
show_message("Welcome to Russian Roulette! Press 'Enter' to pull the trigger.");

// Wait for user to press Enter
while (player_alive) {
    if (keyboard_check_pressed(vk_enter)) {
        // Simulate pulling the trigger
        if (chambers[0]) {
            show_message("Bang! You're dead!");
            player_alive = false;
        } else {
            show_message("Click. You're safe... for now.");
            chambers = array_delete(chambers, 0); // Remove the first chamber
        }
    }
}

// Function to shuffle an array
function array_shuffle(arr) {
    var n = array_length_1d(arr);
    for (var i = 0; i < n; i++) {
        var rand_index = irandom(n - 1);
        var temp = arr[i];
        arr[i] = arr[rand_index];
        arr[rand_index] = temp;
    }
    return arr;
}
