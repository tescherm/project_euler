package project_euler;

/**
 * Problem 2
 * 
 * @author mattt
 */
public final class Problem2 {

    private static int fib(int n) {
        int prevFib = 0;
        int currentFib = 1;

        if (n == 0) {
            return 0;
        }
        if (n == 1) {
            return 1;
        }

        for (int index = n - 1; index > 0; index--) {
            int nextFib = prevFib + currentFib;
            prevFib = currentFib;
            currentFib = nextFib;
        }
        return currentFib;
    }

    public static void main(final String[] args) {

        int n = 0;
        int sum = 0;
        while (true) {
            final int fibResult = fib(n);
            if (fibResult >= 4000000) {
                break;
            }
            if (fibResult % 2 == 0) {
                sum += fibResult;
            }
            n += 1;
        }
        // 4613732
        System.out.println(sum);

    }
}
