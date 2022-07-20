import java.util.*;

class PrimeWithoutRecursive{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Input : ");
        int input = sc.nextInt();
        ArrayList<Integer> prime = new ArrayList<Integer>();

        for (int i = 1; i < 100; i++){
            int count = 0;
            for(int j = i; j >= 1; j--){
                if(i%j == 0) {
                    count += 1;
                }
            }
            if (count <= 2){
                prime.add(i);
            }
        }
        int number = prime.get(input);

        System.out.println(number);
    }
}