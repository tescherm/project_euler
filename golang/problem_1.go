package main

func problem1() int {
	sum := 0
	for i := 3; i <= 999; i++ {
		if i%3 == 0 || i%5 == 0 {
			sum += i
		}
	}
	return sum
}
