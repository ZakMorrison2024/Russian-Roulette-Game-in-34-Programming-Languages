#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void russian_roulette() {
    int chambers[6] = {0, 0, 0, 0, 0, 1};  // 1 chamber with a bullet
    // Shuffle the array
    for (int i = 0; i < 6; i++) {
        int j = rand() % 6;
        int temp = chambers[i];
        chambers[i] = chambers[j];
        chambers[j] = temp;
    }

    printf("Welcome to Russian Roulette!\n");
    printf("Press Enter to pull the trigger...");
    getchar();  // Wait for Enter key

    if (chambers[0] == 1) {
        printf("Bang! You're dead!\n");
    } else {
        printf("Click. You're safe... for now.\n");
    }
}

int main() {
    srand(time(NULL));  // Initialize random number generator
    russian_roulette();
    return 0;
}
