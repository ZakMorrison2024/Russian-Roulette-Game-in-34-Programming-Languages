import java.util.*;

public class RussianRoulette {
    public static void main(String[] args) {
        List<Boolean> chambers = new ArrayList<>(Arrays.asList(false, false, false, false, false));
        chambers.add(true);  // 1 chamber with a bullet
        Collections.shuffle(chambers);  // Shuffle the chambers

        System.out.println("Welcome to Russian Roulette!");
        Scanner scanner = new Scanner(System.in);
        System.out.println("Press Enter to pull the trigger...");
        scanner.nextLine();

        if (chambers.get(0)) {
            System.out.println("Bang! You're dead!");
        } else {
            System.out.println("Click. You're safe... for now.");
        }
    }
}
