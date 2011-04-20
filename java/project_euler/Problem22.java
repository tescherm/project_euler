package project_euler;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

/**
 * Problem 22
 * 
 * @author mattt
 */
public final class Problem22 {

    private static final List<String> NAMES = buildNames();
    private static final Map<Character, Integer> LETTER_SCORES = buildLetterScores();

    public static void main(final String[] args) {

        int totalScore = 0;
        int nameScore = 1;
        for (final String name : NAMES) {
            int letterSum = 0;
            for (char letter : name.toCharArray()) {
                letterSum += LETTER_SCORES.get(letter);
            }

            int score = nameScore * letterSum;
            totalScore += score;
            nameScore++;
        }

        // 871198282
        System.out.println(totalScore);
    }

    private static Map<Character, Integer> buildLetterScores() {
        final Map<Character, Integer> scores = new HashMap<Character, Integer>();

        int letterScore = 1;
        for (final char letter : "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray()) {
            scores.put(letter, letterScore);
            letterScore++;
        }
        return scores;
    }

    private static List<String> buildNames() {
        final List<String> names = new ArrayList<String>();
        try {
            final Scanner scanner = new Scanner(new File("resources/names_problem22.txt")).useDelimiter(",");
            while (scanner.hasNext()) {
                names.add(scanner.next().replaceAll("\"", ""));
            }
        } catch (FileNotFoundException e) {
            System.out.println("Names list not found, using an empty list");
        }
        Collections.sort(names);
        return names;
    }
}
