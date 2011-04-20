package project_euler;

/**
 * Problem 6
 * 
 * @author mattt
 */
public final class Problem6 {

    public static void main(final String[] args) {
        long sumOfSquares = 0;

        int sum = 0;
        for (int num = 1; num <= 100; num++) {
            sumOfSquares += num * num;
            sum += num;
        }
        long squareOfSums = sum * sum;

        // 25164150
        System.out.println(squareOfSums - sumOfSquares);
    }
}
