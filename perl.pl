use List::Util 'shuffle';

sub russian_roulette {
    my @chambers = (0, 0, 0, 0, 0);
    push @chambers, 1;  # 1 chamber with a bullet
    @chambers = shuffle(@chambers);  # Shuffle chambers

    print "Welcome to Russian Roulette!\n";
    <STDIN>;  # Wait for Enter key

    if ($chambers[0]) {
        print "Bang! You're dead!\n";
    } else {
        print "Click. You're safe... for now.\n";
    }
}

russian_roulette();
