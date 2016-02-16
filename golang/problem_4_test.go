package main

import "testing"

func TestProblem4(t *testing.T) {
	t.Log("running test for problem 4...")

	const expected int = 906609

	answer := problem4()
	if expected != answer {
		t.Errorf("expected %d, but %d returned", expected, answer)
	}
}

func BenchmarkProblem4(b *testing.B) {
	b.Log("running benchmark for problem 4...")
	for i := 0; i < b.N; i++ {
		problem4()
	}
}
