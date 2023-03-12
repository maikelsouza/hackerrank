package domains.java.javastdinandstdoutI;

import java.util.Scanner;

 /**
  * Exercise about Java stdin and stdout 1 of hackerrank platform
  */
public class Solution {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int a = input.nextInt();
        int b = input.nextInt();
        int c = input.nextInt();

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);
    }
}
