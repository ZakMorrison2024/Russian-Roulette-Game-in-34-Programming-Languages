import kotlin.random.Random

fun russianRoulette() {
    val chambers = MutableList(6) { false }
    chambers[Random.nextInt(6)] = true  // 1 chamber with a bullet

    println("Welcome to Russian Roulette!")
    readLine()  // Wait for Enter key

    if (chambers[0]) {
        println("Bang! You're dead!")
    } else {
        println("Click. You're safe... for now.")
    }
}

fun main() {
    russianRoulette()
}
