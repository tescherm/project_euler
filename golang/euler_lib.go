package main

import (
	"math"
	"strconv"
)

// Returns the nth fibonacci number
func fib(n int) int {
	if n == 0 {
		return 0
	}

	if n == 1 {
		return 1
	}

	var newFib int

	prevFib := 0
	currFib := 1

	for i := n - 1; i > 0; i-- {
		newFib = prevFib + currFib
		prevFib = currFib
		currFib = newFib
	}

	return currFib
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func prime(n int) bool {
	if n < 2 {
		return false
	}
	if n == 2 {
		return true
	}
	if n == 3 {
		return true
	}

	if n%2 == 0 {
		return false
	}
	if n%3 == 0 {
		return false
	}

	prime := true
	for m := int(math.Ceil(math.Sqrt(float64(n)))); m >= 2; m-- {
		if n%m == 0 {
			prime = false
			break
		}
	}
	return prime
}

func palindrome(n int) bool {
	s := strconv.Itoa(n)
	return s == reverse(s)
}

func reverse(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}
