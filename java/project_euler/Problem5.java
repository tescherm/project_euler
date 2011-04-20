package project_euler;

import java.util.ArrayDeque;
import java.util.Deque;

/**
 * Problem 5
 * 
 * @author mattt
 */
public final class Problem5 {

    private static final Deque<Long> NUMBERS = new ArrayDeque<Long>();

    private static long gcd(final long a, final long b) {
        if (b == 0) {
            return a;
        }
        return gcd(b, a % b);
    }

    private static long lcm(final long a, final long b) {
        return (Math.abs(a * b) / gcd(a, b));
    }

    public static void main(final String[] args) {
        for (int number = 1; number <= 20; number++) {
            NUMBERS.add(Long.valueOf(number));
        }
        while (true) {
            if (NUMBERS.size() == 1) {
                break;
            }
            final Long firstNum = NUMBERS.removeLast();
            final Long nextNum = NUMBERS.removeLast();

            final Long lcm = lcm(firstNum, nextNum);

            NUMBERS.addLast(lcm);
        }
        System.out.println(NUMBERS.getLast());
    }
}
