russian_roulette <- function() {
  chambers <- c(rep(FALSE, 5), TRUE)  # 5 empty chambers, 1 with a bullet
  chambers <- sample(chambers)  # Shuffle chambers
  
  cat("Welcome to Russian Roulette!\n")
  readline()  # Wait for Enter key
  
  if (chambers[1]) {
    cat("Bang! You're dead!\n")
  } else {
    cat("Click. You're safe... for now.\n")
  }
}

russian_roulette()
