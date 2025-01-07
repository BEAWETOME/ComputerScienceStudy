package array.ex;

import java.util.Scanner;

public class ArrayEx6 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("입력받을 숫자의 개수를 입력하세요: ");
        int count = scanner.nextInt();

        int maxNumber, minNumber;
        int[] number = new int[count];

        System.out.println(count + "개의 정수를 입력하세요:");
        for (int i = 0; i < number.length; i++) {
            number[i] = scanner.nextInt();
        }

        minNumber = maxNumber = number[0];
        for (int i = 0; i < number.length; i++) {
            if (number[i] < minNumber) {
                minNumber = number[i];
            }
            if (number[i] > maxNumber) {
                maxNumber = number[i];
            }
        }

        System.out.println("가장 작은 정수: " + minNumber);
        System.out.println("가장 큰 정수: " + maxNumber);
    }
}
