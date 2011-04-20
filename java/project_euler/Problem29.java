package project_euler;

import java.util.HashSet;
import java.util.Set;

/**
 * Problem 29
 * 
 * @author mattt
 */
public final class Problem29 {

    public static void main(final String[] args) {
        final Set<Double> terms = new HashSet<Double>();
        for (int a = 2; a <= 100; a++) {
            for (int b = 2; b <= 100; b++) {
                terms.add(Math.pow(a, b));
            }
        }
        // 9183
        System.out.println(terms.size());
    }
}
