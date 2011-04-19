package project_euler;

/**
 * Problem 1
 * 
 * @author mattt
 */
public final class Problem1 {

    public static void main(final String[] args) {
        int sum = 0;
        for (int number = 3; number < 1000; number++) {
            if (number % 3 == 0 || number % 5 == 0) {
                sum += number;
            }
        }
        // 233168
        System.out.println(sum);
    }
}
