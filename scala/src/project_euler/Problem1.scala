package project_euler

import scala.testing.Benchmark

object Problem1 {

  def main(args: Array[String]): Unit = {

    object BM extends Benchmark {
      def run = {
        val numbers = Array.range(3, 1000)
        val sum = numbers.reduceLeft { (sum: Int, num: Int) =>
          if (num % 3 == 0 || num % 5 == 0) sum + num else sum
        }
        //233168
        print(sum)
      }
    }
    println("code ran in " + BM.runBenchmark(1).head + " ms")
  }
}

