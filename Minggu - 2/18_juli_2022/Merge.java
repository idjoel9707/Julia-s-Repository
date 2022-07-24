import java.util.*;


class Merge {
    public static void main(String[] args) {
        // System.out.println("Hello world!");
        ArrayList<String> array1 = new ArrayList<String>();
        ArrayList<String> array2 = new ArrayList<String>();

        array1.add("kazuya");
        array1.add("jin");
        array1.add("lee");
        array2.add("kazuya");
        array2.add("feng");

        System.out.println(array1.addAll(array2));
        System.out.println(array1);

    }
}