import java.util.*;
class Maximum{
    int count = 0;
    public int maxBP (int n, List<Integer> arrList){
        int temp = 0;
        Random rand = new Random();
        int random = arrList.get(rand.nextInt(arrList.size()));
        int sisa = n - random;

        System.out.println(sisa + " " +  n + " " + random+ " ini "  + count + " " + temp);

        if (sisa < Collections.min(arrList)){
            if (count > temp) {
                temp = count;
                count = 0;
            }
        } else {
            count += 1;
            return  maxBP(sisa, arrList);
        }
        return temp;
    }
}

class MaxBuyProduct {
    public static void main(String[] args) {
        ArrayList<Integer> arr = new ArrayList<>();
        arr.add(11);
        arr.add(1);
        arr.add(32);
        arr.add(8);
        arr.add(7);

        Scanner sc = new Scanner(System.in);
        System.out.println("Input : ");
        int input = sc.nextInt();
        Maximum maxBuyProd = new Maximum();
        int result = maxBuyProd.maxBP(input, arr);

        System.out.println();
        System.out.println(result);

    }


}