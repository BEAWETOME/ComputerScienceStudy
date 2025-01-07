package array.ex;

import java.util.Scanner;

public class ArrayEx5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("입력받을 숫자의 개수를 입력하세요: ");
        int num = scanner.nextInt();

        int[] number = new int[num];
        int total = 0;
        double average;

        System.out.println(num + "개의 정수를 입력하세요:");
        for (int i = 0; i < number.length; i++) {
            number[i] = scanner.nextInt();
            total += number[i];
        }

        average = (double) total / num;

        System.out.println("입력한 점수의 합계: " + total);
        System.out.println("입력한 점수의 평균: " + average);
    }
}
