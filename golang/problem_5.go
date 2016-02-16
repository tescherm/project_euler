package main

func problem5() int {
	nums := []int{
		1,
		2,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		10,
		11,
		12,
		13,
		14,
		15,
		16,
		17,
		18,
		19,
		20,
	}

	var firstNum int
	var nextNum int

	var leastCommonMultiple int

	pop := func() int {
		last := len(nums) - 1

		num := nums[last]
		nums = nums[:last]
		return num
	}

	for {
		if len(nums) == 1 {
			break
		}

		firstNum = pop()
		nextNum = pop()

		leastCommonMultiple = lcm(firstNum, nextNum)
		nums = append(nums, leastCommonMultiple)
	}

	return nums[0]
}
