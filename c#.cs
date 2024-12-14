using System;

class RussianRoulette {
    static void Main() {
        bool[] chambers = new bool[6];
        Random rand = new Random();
        
        // Fill chambers with false (empty) and one true (bullet)
        chambers[rand.Next(6)] = true;

        Console.WriteLine("Welcome to Russian Roulette!");
        Console.ReadLine();  // Wait for Enter key

        if (chambers[0]) {
            Console.WriteLine("Bang! You're dead!");
        } else {
            Console.WriteLine("Click. You're safe... for now.");
        }
    }
}
