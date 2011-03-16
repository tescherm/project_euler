package project_euler

import scala.testing.Benchmark

/**
 * Runs a benchmark against a given code block
 *
 * @author mattt
 *
 */
trait TimedRun extends Benchmark {
  def apply() {
    var time = runBenchmark(1).head
    println("code ran in " + time + " ms")
  }
}