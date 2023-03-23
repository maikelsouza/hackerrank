package domains.java.javaloopsII;

import java.util.Scanner;

/**
 * Exercise about Java loopsII of HackerRank platform
 */
public class Solution {

    public static void main(String []argh){

        Scanner input = new Scanner(System.in);
        int t = input.nextInt();
        for(int i = 0; i < t; i++){
            int a = input.nextInt();
            int b = input.nextInt();
            int n = input.nextInt();
            int res = 0;
            for (int j = 0; j < n; j++){
                int pow = (int) Math.pow(2,j);
                res+= (pow * b);
                System.out.print(res + a);
                System.out.print(" ");
            }
            System.out.println();
        }
        input.close();
    }
}
