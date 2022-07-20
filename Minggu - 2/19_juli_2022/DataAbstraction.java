import java.util.*;

abstract class CalculationOperation {
    float value1;
    float value2;
    float result;
};

class AddValue extends CalculationOperation{
    public AddValue(int value1, int value2){
        this.value1 = value1;
        this.value2 = value2;
    };

    public void display(){
        result = value1 + value2;
        System.out.println("Hasil : " + result );
    }
};
class SubValue extends CalculationOperation{
    public SubValue(int value1, int value2){
        this.value1 = value1;
        this.value2 = value2;
    };

    public void display(){
        result = value1 - value2;
        System.out.println("Hasil : " + result );
    }
};
class MultiplyValue extends CalculationOperation{
    public MultiplyValue(int value1, int value2){
        this.value1 = value1;
        this.value2 = value2;
    };

    public void display(){
        result = value1 * value2;
        System.out.println("Hasil : " + result );
    }
};
class DivideValue extends CalculationOperation{
    public DivideValue(int value1, int value2){
        this.value1 = value1;
        this.value2 = value2;
    };

    public void display(){
        result = value1 / value2;
        System.out.println("Hasil : " + result );
    }
};

class DataAbstraction {
    public static void main(String[] args) {
        System.out.println("CALCULATOR");
        System.out.println("1: Open Calculator");
        System.out.println("99: Exit");

        Scanner sc = new Scanner(System.in);
        System.out.print("Input : ");
        int input = sc.nextInt();
        if (input == 1) {
            System.out.println("CALCULATOR");
            System.out.print("Value 1 : ");
            int value_first = sc.nextInt();
            System.out.print("Value 2 : ");
            int value_second = sc.nextInt();


            System.out.println("CALCULATOR");
            System.out.println("Please enter your operation");
            System.out.println("1. Add Value");
            System.out.println("2. Sub Value");
            System.out.println("3. Multiply Value");
            System.out.println("4. Divide Value");
            System.out.print("Pilihan Anda : ");
            int choice = sc.nextInt();


            switch (choice) {
                case 1:
                    AddValue jumlah = new AddValue(value_first, value_second);
                    jumlah.display();
                    break;
                case 2:
                    SubValue kurang = new SubValue(value_first, value_second);
                    kurang.display();
                    break;
                case 3:
                    MultiplyValue kali = new MultiplyValue(value_first, value_second);
                    kali.display();
                    break;
                case 4:
                    DivideValue bagi = new DivideValue(value_first, value_second);
                    bagi.display();
                    break;
            }

        } else {
            System.out.println("Bye :)");
        }

    }
}