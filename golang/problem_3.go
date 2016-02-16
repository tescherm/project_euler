package main

import "math"

func problem3() int {
	const number = 600851475143
	var largestPrimeFactor int

	for m := int(math.Ceil(math.Sqrt(float64(number)))); m >= 2; m-- {
		if prime(m) && number%m == 0 {
			largestPrimeFactor = m
			break
		}
	}

	return largestPrimeFactor
}
