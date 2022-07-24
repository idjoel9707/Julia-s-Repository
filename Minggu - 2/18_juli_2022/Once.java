import java.util.*;

class Once {
    public static void main(String[] args) {

        String nums = "76523752";
        boolean isSingle = false;
        ArrayList<String> arrayNum = new ArrayList<String>();

        for(char i :nums.toCharArray()) {
            if (nums.indexOf(i) == nums.lastIndexOf(i)){
                arrayNum.add(""+i);
                isSingle = true;
            }
        }

        if(isSingle)
            System.out.println("There is no non repeating character in input string");

        System.out.println(arrayNum);

    }
}