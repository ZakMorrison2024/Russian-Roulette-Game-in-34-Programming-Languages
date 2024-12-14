import random

def russian_roulette():
    chambers = [False] * 5  # 5 empty chambers
    chambers.append(True)   # 1 chamber with a bullet
    random.shuffle(chambers)  # Shuffle to randomize the position

    print("Welcome to Russian Roulette!")
    input("Press Enter to pull the trigger...")
    
    if chambers[0]:  # Check if the first chamber has the bullet
        print("Bang! You're dead!")
    else:
        print("Click. You're safe... for now.")

russian_roulette()
