package domains.java.javastdinandstdoutII;

import java.util.Scanner;

/**
 * Exercise about Java stdin and stdout II of HackerRank platform
 */
public class Solution {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int i = input.nextInt();
        double d = input.nextDouble();
        input.nextLine();
        String s = input.nextLine();

        System.out.println("String: " + s);
        System.out.println("Double: " + d);
        System.out.println("Int: " + i);
    }
}
