// Java program for the above approach
class FibonacciUp {
    public static void Fibonacci(int N) {
        int num1 = 0, num2 = 1;
        System.out.print(" "+ num1+" "+ num2);
        int counter = 0;
        while (counter < (N-1)) {
            int num3 = num2 + num1;
            num1 = num2;
            num2 = num3;
            counter = counter + 1;
            System.out.print(" "+ num3);
        }
    }
    public static void main(String[] args) {
        int N = 10;
        Fibonacci(N);
    }
}
