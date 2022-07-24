import java.util.*;

class MoneyChange {
    public static void main(String[] args) {
        int money = 15000;
        ArrayList<Integer> list = new ArrayList<>(Arrays.asList(1, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000));

        ArrayList<Integer> changeBreak = new ArrayList<>();

        for(int i = list.size() - 1; i >= 0; i--){
            if(list.get(i) <= money) {
                money = money - list.get(i);
                System.out.println(money + " " + list.get(i));
                changeBreak.add(list.get(i));
            }
        }


        System.out.println(changeBreak + " " + money);
    }
}