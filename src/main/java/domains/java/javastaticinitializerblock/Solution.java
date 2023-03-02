package domains.java.javastaticinitializerblock;

import java.util.Scanner;

public class Solution {

    private static int B;
    private static int H;
    private static boolean flag;

    static{
        Scanner input = new Scanner(System.in);
        B = input.nextInt();
        H = input.nextInt();
        if(B > 0 && H > 0){
            flag = true;
        }else{
            System.out.println("java.lang.Exception: Breadth and height must be positive");
        }
    }
    public static void main(String[] args){
        if(flag){
            int area=B*H;
            System.out.print(area);
        }

    }//end of main

}//end of c

