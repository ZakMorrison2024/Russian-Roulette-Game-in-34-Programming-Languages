const std = @import("std");

const chambers_count = 6; // Number of chambers in the revolver
var chambers: [chambers_count]bool = undefined; // Array of chambers (True for loaded, False for empty)
var loaded_chamber: usize = 0; // The randomly loaded chamber

// Setup the game by randomly selecting the loaded chamber
fn setup_game() void {
    const rand = std.rand.DefaultPrng.init(std.time.nanoTimestamp());
    loaded_chamber = rand.int(usize, chambers_count); // Select a random chamber between 0 and chambers_count - 1
    std.debug.print("The loaded chamber is at index {}\n", .{ loaded_chamber });

    // Initialize all chambers as empty
    for (chambers) |*chamber| {
        chamber.* = false;
    }
    chambers[loaded_chamber] = true; // Set the randomly chosen chamber to "loaded"
}

// Simulate pulling the trigger
fn pull_trigger() void {
    const rand = std.rand.DefaultPrng.init(std.time.nanoTimestamp());
    const fired_chamber = rand.int(usize, chambers_count); // Randomly pick a chamber to "fire"

    if (chambers[fired_chamber]) {
        std.debug.print("BANG! You're dead. The loaded chamber was at index {}\n", .{ fired_chamber });
    } else {
        std.debug.print("Click! The chamber was empty.\n");
    }
}

// Start the game
fn start_game() void {
    setup_game();
    std.debug.print("Welcome to Russian Roulette! Press enter to pull the trigger.\n");
    const stdin = std.io.getStdIn();
    _ = stdin.readByte(); // Wait for user input (enter key)
    pull_trigger();
}

// Main entry point
pub fn main() void {
    start_game();
}
