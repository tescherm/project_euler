package main

import "testing"

func TestProblem3(t *testing.T) {
	t.Log("running test for problem 3...")

	const expected int = 6857

	answer := problem3()
	if expected != answer {
		t.Errorf("expected %d, but %d returned", expected, answer)
	}
}

func BenchmarkProblem3(b *testing.B) {
	b.Log("running benchmark for problem 3...")
	for i := 0; i < b.N; i++ {
		problem3()
	}
}
