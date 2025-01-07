package array.ex;

public class ArrayEx1 {
    public static void main(String[] args) {
        int[] arr = {90,80,70,60,50};

        int total = 0;
        for (int i : arr) {
            total += i;
        }

        double average = (double) total / 5;

        System.out.println("점수 총합: " + total);
        System.out.println("점수 평균: " + average);
    }
}
