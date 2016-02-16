package main

import "testing"

func TestProblem1(t *testing.T) {
	t.Log("running test for problem 1...")

	const expected int = 233168

	answer := problem1()
	if expected != answer {
		t.Errorf("expected %d, but %d returned", expected, answer)
	}
}

func BenchmarkProblem1(b *testing.B) {
	b.Log("running benchmark for problem 1...")
	for i := 0; i < b.N; i++ {
		problem1()
	}
}
