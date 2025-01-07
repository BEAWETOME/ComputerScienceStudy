package operator.ex;

public class OperationEx3 {

    public static void main(String[] args) {
        //True인 경우
        int score = 90;
        boolean result1 = 80 <= score && score <= 100;
        System.out.println("result1 = " + result1);

        //Flase인 경우
        score = 110;
        boolean result2 = 80 <= score && score <= 100;
        System.out.println("result2 = " + result2);



    }
}
