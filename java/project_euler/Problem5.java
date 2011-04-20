package project_euler;

import java.util.ArrayDeque;
import java.util.Deque;

/**
 * Problem 5
 * 
 * @author mattt
 */
public final class Problem5 {

    private static long gcd(final long a, final long b) {
        if (b == 0) {
            return a;
        }
        return gcd(b, a % b);
    }

    private static long lcm(final long a, final long b) {
        return Math.abs(a * b) / gcd(a, b);
    }

    public static void main(final String[] args) {
        final Deque<Long> numbers = new ArrayDeque<Long>();
        for (int number = 1; number <= 20; number++) {
            numbers.add(Long.valueOf(number));
        }
        while (true) {
            if (numbers.size() == 1) {
                break;
            }
            final Long firstNum = numbers.removeLast();
            final Long nextNum = numbers.removeLast();

            final Long lcm = lcm(firstNum, nextNum);

            numbers.addLast(lcm);
        }
        System.out.println(numbers.getLast());
    }
}
