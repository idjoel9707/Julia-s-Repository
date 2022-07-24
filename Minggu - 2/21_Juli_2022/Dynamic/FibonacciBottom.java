import java.util.*;
class FibonacciBottom {
    public static void Fibonacci(int N) {
        List<Integer> arr = new ArrayList<>();
        arr.add(0);
        arr.add(1);

        for(int i = 1; i < arr.size(); i++){
            int newNumber = arr.get(i-1) + arr.get(i);
            if (arr.size() > N) {
                break;
            }
            arr.add(newNumber);
        }
        System.out.println(arr);
    }
    public static void main(String[] args) {
        int N = 10;
        Fibonacci(N);
    }
}
