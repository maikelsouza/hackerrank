package domains.java.javaifelse;

import java.util.Scanner;

/**
 * Exercise about Java if else of HackerRank platform
 */
public class Solution {

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        int N = scanner.nextInt();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");
        if (N % 2 == 0){
            if (N >= 6 && N <= 20){
                System.out.println("Weird");
            }else{
                System.out.println("Not Weird");
            }
        }else{
            System.out.println("Weird");
        }
        scanner.close();
    }
}
