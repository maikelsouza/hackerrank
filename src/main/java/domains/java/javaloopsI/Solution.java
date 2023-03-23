package domains.java.javaloopsI;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Exercise about Java loopsI of HackerRank platform
 */
public class Solution {

    public static void main(String[] args) throws IOException {

        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(bufferedReader.readLine().trim());

        for (int i = 1; i <= 10; i++){
            System.out.println(N + " x " + i +" = " +  N * i);
        }

        bufferedReader.close();
    }
}
