package loop.ex;

public class WhileEx2 {

    public static void main(String[] args) {
        int count = 1;
        int num = 2;

        while (count <= 10) {
            System.out.println(num);
            count++;
            num += 2;
        }
    }
}
