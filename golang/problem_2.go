package main

func problem2() int {
	sum := 0
	n := 0

	for {
		fibResult := fib(n)

		if fibResult >= 4000000 {
			break
		}

		if fibResult%2 == 0 {
			sum += fibResult
		}
		n++
	}
	return sum
}
