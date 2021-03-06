package main

import "testing"

func TestProblem5(t *testing.T) {
	t.Log("running test for problem 5...")

	const expected int = 232792560

	answer := problem5()
	if expected != answer {
		t.Errorf("expected %d, but %d returned", expected, answer)
	}
}

func BenchmarkProblem5(b *testing.B) {
	b.Log("running benchmark for problem 5...")
	for i := 0; i < b.N; i++ {
		problem5()
	}
}
