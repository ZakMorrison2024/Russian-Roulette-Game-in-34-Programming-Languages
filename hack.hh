<hh
function russianRoulette(): void {
  $chambers = array_fill(0, 5, false) + [true];  // 1 chamber with a bullet
  shuffle(inout $chambers);  // Shuffle chambers

  echo "Welcome to Russian Roulette!\n";
  fgets(STDIN, 100);  // Wait for Enter key

  if ($chambers[0]) {
    echo "Bang! You're dead!\n";
  } else {
    echo "Click. You're safe... for now.\n";
  }
}

russianRoulette();
