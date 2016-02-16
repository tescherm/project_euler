package main

func problem6() int {
	sumOfSquares := 0

	sum := 0
	for num := 1; num <= 100; num++ {
		sumOfSquares += num * num
		sum += num
	}

	squareOfSums := sum * sum

	return squareOfSums - sumOfSquares
}
