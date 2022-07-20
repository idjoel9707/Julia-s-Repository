import java.util.*;

class Fibonaci {
    int count = 0;
    public int fibo(int n){
        count = count + n;
        if(n <= 0 )
            return count;
        return fibo(n-1);
    }
}

class FibonaciWithRecursive{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Input : ");
        int input = sc.nextInt();

        Fibonaci fibonacci = new Fibonaci();
        int result = fibonacci.fibo(input);

        System.out.println();
        System.out.println(result);
    }
}