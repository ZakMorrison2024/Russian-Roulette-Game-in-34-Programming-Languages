let russian_roulette () =
  let chambers = [false; false; false; false; false] in
  let chambers_with_bullet = chambers @ [true] in
  let shuffled_chambers = List.sort (fun _ _ -> Random.int 3 - 1) chambers_with_bullet in

  print_endline "Welcome to Russian Roulette!";
  ignore (read_line ());  (* Wait for Enter key *)

  if List.hd shuffled_chambers then
    print_endline "Bang! You're dead!"
  else
    print_endline "Click. You're safe... for now."

let () = randomize (); russian_roulette ()
