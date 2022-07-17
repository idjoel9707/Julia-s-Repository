public class VokalKonsonan {
	public static void main(String[] args) {
		String input = "Altera Academy";
		input = input.toLowerCase().replaceAll(" ", "");
		String[] vokalChars = {"a", "o", "i", "u", "e"};
		int vokal = 0;
		int konsonan = 0;

		for (int i = 0; i < input.length(); i++){
			if(input.charAt(i) == 'a' || input.charAt(i) == 'i' ||
				input.charAt(i) == 'e' || input.charAt(i) == 'o'
				|| input.charAt(i) == 'u' ){
				vokal += 1;
			} else {
				konsonan += 1;
			}
		}

		System.out.println("Jumalh vokal : " + vokal);
		System.out.println("Jumalh konsonan : " + konsonan);
		System.out.println("Total karakter : " + (vokal + konsonan));
	}
}