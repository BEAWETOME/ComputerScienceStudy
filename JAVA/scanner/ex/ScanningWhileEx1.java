package scanner.ex;

import java.util.Scanner;

public class ScanningWhileEx1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.print("이름을 입력하세요 (종료를 입력하면 종료): ");
            String name = scanner.nextLine(); //다시 돌아왔을 때 nextInt() 에서 남은 \n이 적용, 그냥 넘어가게 됨. 오류발생.

            if (name.equals("종료")) {
                System.out.println("프로그램을 종료합니다.");
                break;
            }

            System.out.print("나이를 입력하세요: ");
            int age = scanner.nextInt();
            scanner.nextLine(); // 10\n 중에서 10만 가져감, \n이 남아있음
            // nextLine()은 줄 전부를 가져가지만, nextInt()는 숫자만 가져감, 따라서 \n가 남아서 다음 입력에 영향줌

            System.out.println("입력한 이름: " + name + ", 나이: " + age);
        }
    }
}
