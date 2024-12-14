import scala.util.Random

object RussianRoulette {
  def russianRoulette(): Unit = {
    val chambers = Array.fill(5)(false) ++ Array(true)  // 1 chamber with a bullet
    Random.shuffle(chambers.toList)  // Shuffle chambers

    println("Welcome to Russian Roulette!")
    scala.io.StdIn.readLine()  // Wait for Enter key

    if (chambers.head) {
      println("Bang! You're dead!")
    } else {
      println("Click. You're safe... for now.")
    }
  }

  def main(args: Array[String]): Unit = {
    russianRoulette()
  }
}
