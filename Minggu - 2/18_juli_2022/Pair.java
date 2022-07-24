import java.util.*;

class Pair {
    public static void main(String[] args) {

        ArrayList<Integer> nums = new ArrayList<Integer>();
        nums.add(1);
        nums.add(2);
        nums.add(3);
        nums.add(4);
        nums.add(5);
        nums.add(6);

        int target = 10;
        ArrayList<String> arrayNum = new ArrayList<>();

        for(int i = 0; i < nums.size(); i++) {
            for(int j = 0; j < nums.size(); j++) {
                if (nums.get(i) + nums.get(j) == target){
                    arrayNum.add("(" + nums.indexOf(nums.get(i)) + ", " + nums.indexOf(nums.get(j)) + ")");
                }
            }
        }
        System.out.println(arrayNum);

    }
}