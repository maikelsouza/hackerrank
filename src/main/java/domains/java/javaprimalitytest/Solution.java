package domains.java.javaprimalitytest;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Scanner;

public class Solution {
    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(System.in);
        BigInteger n = input.nextBigInteger();
        input.close();
        System.out.println(n.isProbablePrime(10) ? "prime" : "not prime");
    }
}
