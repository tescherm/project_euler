package project_euler

import scala.testing.Benchmark

trait TimedRun extends Benchmark {
  def apply() {
    var time = runBenchmark(1).head
    println("code ran in " + time + " ms")
  }
}