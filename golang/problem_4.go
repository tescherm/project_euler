package main

func problem4() int {
	num1 := 999
	num2 := 999

	var product int
	var largestPalindrome int

	for n := num1; n >= 0; n-- {
		for m := num2; m >= 0; m-- {
			product = n * m
			if palindrome(product) && product > largestPalindrome {
				largestPalindrome = product
			}
		}
		num2 -= 1
	}
	return largestPalindrome
}
