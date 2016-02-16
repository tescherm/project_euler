package main

import "testing"

func TestFib(t *testing.T) {
	// map of f(n) = v tests
	tests := map[int]int{
		0:  0,
		1:  1,
		2:  1,
		3:  2,
		4:  3,
		5:  5,
		6:  8,
		7:  13,
		8:  21,
		9:  34,
		10: 55,
		11: 89,
		12: 144,
		13: 233,
		14: 377,
		15: 610,
		16: 987,
		17: 1597,
		18: 2584,
		19: 4181,
		20: 6765,
	}

	for k, v := range tests {
		res := fib(k)
		if res != v {
			t.Errorf("f(%d)=%d, expected f(%d)=%d", k, res, k, v)
		}
	}
}

func TestGcd(t *testing.T) {
	// map of gcd(a, b) = v tests
	tests := map[[2]int]int{
		[2]int{8, 12}:   4,
		[2]int{54, 24}:  6,
		[2]int{1, 2}:    1,
		[2]int{2, 4}:    2,
		[2]int{3, 5}:    1,
		[2]int{72, 184}: 8,
	}

	for k, v := range tests {
		a := k[0]
		b := k[1]

		res := gcd(a, b)
		if res != v {
			t.Errorf("gcd(%d, %d)=%d, expected gcd(%d, %d)=%d", a, b, res, a, b, v)
		}
	}
}

func TestLcm(t *testing.T) {
	// map of lcm(a, b) = v tests
	tests := map[[2]int]int{
		[2]int{4, 6}: 12,

		[2]int{330, 65}: 4290,
		[2]int{330, 1}:  330,
		[2]int{1, 330}:  330,
		[2]int{5, 2}:    10,
		[2]int{3, 3}:    3,
	}

	for k, v := range tests {
		a := k[0]
		b := k[1]

		res := lcm(a, b)
		if res != v {
			t.Errorf("lcm(%d, %d)=%d, expected lcm(%d, %d)=%d", a, b, res, a, b, v)
		}
	}
}

func TestPrime(t *testing.T) {
	// map of prime(n) = t/f tests
	tests := map[int]bool{
		1:  false,
		2:  true,
		3:  true,
		4:  false,
		5:  true,
		6:  false,
		7:  true,
		8:  false,
		9:  false,
		10: false,
	}

	for n, v := range tests {
		res := prime(n)
		if res != v {
			t.Errorf("prime(%d)=%t, expected prime(%d)=%t", n, res, n, v)
		}
	}
}
