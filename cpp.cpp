/*#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>

void russianRoulette() {
    std::vector<bool> chambers = {false, false, false, false, false};
    chambers.push_back(true);  // Add one chamber with a bullet

    // Shuffle the chambers randomly
    std::srand(std::time(0));  // Initialize random seed
    std::random_shuffle(chambers.begin(), chambers.end());

    std::cout << "Welcome to Russian Roulette!" << std::endl;
    std::cin.get();  // Wait for Enter key to simulate pulling the trigger

    // Check if the first chamber has a bullet
    if (chambers[0]) {
        std::cout << "Bang! You're dead!" << std::endl;
    } else {
        std::cout << "Click. You're safe... for now." << std::endl;
    }
}

int main() {
    russianRoulette();
    return 0;
}
*/