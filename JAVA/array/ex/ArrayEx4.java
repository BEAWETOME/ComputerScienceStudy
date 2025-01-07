package array.ex;

import java.util.Scanner;

public class ArrayEx4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int total = 0;
        int[] number = new int[5];

        System.out.println("5개의 정수를 입력하세요:");
        for (int i = 0; i < number.length; i++) {
            number[i] = scanner.nextInt();
            total += number[i];
        }

        double average = (double) total / 5;

        System.out.println("입력한 점수의 합계: " + total);
        System.out.println("입력한 점수의 평균: " + average);
    }
}
