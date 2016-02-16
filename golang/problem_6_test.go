package main

import "testing"

func TestProblem6(t *testing.T) {
	t.Log("running test for problem 6...")

	const expected int = 25164150

	answer := problem6()
	if expected != answer {
		t.Errorf("expected %d, but %d returned", expected, answer)
	}
}

func BenchmarkProblem6(b *testing.B) {
	b.Log("running benchmark for problem 6...")
	for i := 0; i < b.N; i++ {
		problem6()
	}
}
