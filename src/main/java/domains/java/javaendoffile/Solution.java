package domains.java.javaendoffile;

import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        int i = 1;
        while (input.hasNextLine()) {
            System.out.println(i + " " + input.nextLine());
            i++;
        }
        input.close();
    }
}
