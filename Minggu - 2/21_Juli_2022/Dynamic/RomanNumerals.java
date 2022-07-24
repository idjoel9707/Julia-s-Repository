class RomanNumerals {
    public static void RomanNumerals(int num) {
        String[] romanLetters = {"M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"};
        int[] number = {1000,900,500,400,100,90,50,40,10,9,5,4,1};

        StringBuilder romaNumber = new StringBuilder();

        for(int i=0;i<number.length;i++) {
            while(num >= number[i]) {
                num = num - number[i];
                romaNumber.append(romanLetters[i]);
            }
        }
        System.out.println(romaNumber.toString());
    }
    public static void main(String[] args) {
        RomanNumerals(4);
        RomanNumerals(9);
        RomanNumerals(2022);
        RomanNumerals(1997);
    }
}