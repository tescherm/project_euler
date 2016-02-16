package main

import "testing"

func TestProblem2(t *testing.T) {
	t.Log("running test for problem 2...")

	const expected int = 4613732

	answer := problem2()
	if expected != answer {
		t.Errorf("expected %d, but %d returned", expected, answer)
	}
}

func BenchmarkProblem2(b *testing.B) {
	b.Log("running benchmark for problem 2...")
	for i := 0; i < b.N; i++ {
		problem2()
	}
}
