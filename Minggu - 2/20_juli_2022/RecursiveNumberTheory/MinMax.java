import java.util.*;
public class MinMax {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        List<Integer> arr = new ArrayList<Integer>();
        arr.add(11);
        arr.add(1);
        arr.add(32);
        arr.add(8);
        arr.add(7);

        int max = Collections.max(arr);
        int min = Collections.min(arr);
        System.out.println(max);
        System.out.println(min);
        System.out.println(arr.size());

    }
}