package array.ex;

import java.util.Scanner;

public class ArrayEx8 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("학생수를 입력하세요: ");
        int studentCount = input.nextInt();

        int[][] scores = new int[studentCount][3];
        String[] subjects = {"국어", "수학", "영어"};

        for (int i = 0; i < studentCount; i++) {
            System.out.println((i+1) + "번 학생의 성적을 입력하세요: ");
            for (int j = 0; j < 3; j++) {
                System.out.print(subjects[j] + " 점수: ");
                scores[i][j] = input.nextInt();
            }
        }

        for (int i = 0; i < studentCount; i++) {
            int sum = 0;
            for (int j = 0; j < 3; j++) {
                sum += scores[i][j];
            }
            double average = (double) sum / 3;
            System.out.println((i+1) + "번 학생의 총점: " + sum + ", 평균: " + average);
        }
    }
}
