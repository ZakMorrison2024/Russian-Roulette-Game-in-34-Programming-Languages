-module(russian_roulette).
-export([play/0]).

play() ->
    Chambers = [false, false, false, false, false],
    BulletChamber = random:uniform(6) - 1,  % Randomly choose a chamber for the bullet
    Chambers1 = lists:replace_at(Chambers, BulletChamber, true),
    io:format("Welcome to Russian Roulette!~n"),
    io:flush(),
    io:read_line("Press Enter to pull the trigger..."),
    case hd(Chambers1) of
        true -> io:format("Bang! You're dead!~n");
        false -> io:format("Click. You're safe... for now.~n")
    end.
