package project_euler

object Problem1 {

  def main(args: Array[String]): Unit = {

    var timedRun = new TimedRun {
      def run = {
        val numbers = Array.range(3, 1000)
        val sum = numbers.reduceLeft { (sum: Int, num: Int) =>
          if (num % 3 == 0 || num % 5 == 0) sum + num else sum
        }
        //233168
        println(sum)
      }
    }
    timedRun()
  }
}

