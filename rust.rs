use rand::seq::SliceRandom;
use std::io;

fn russian_roulette() {
    let mut chambers = vec![false, false, false, false, false];
    chambers.push(true);  // 1 chamber with a bullet
    let mut rng = rand::thread_rng();
    chambers.shuffle(&mut rng);  // Shuffle the chambers

    println!("Welcome to Russian Roulette!");
    io::stdin().read_line(&mut String::new()).expect("Failed to read line");

    if chambers[0] {
        println!("Bang! You're dead!");
    } else {
        println!("Click. You're safe... for now.");
    }
}

fn main() {
    russian_roulette();
}
