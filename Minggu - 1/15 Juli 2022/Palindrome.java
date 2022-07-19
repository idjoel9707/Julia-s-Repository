public class Palindrome {
	public static void main(String[] args) {
		String input = "katak";
		input = input.toLowerCase().replaceAll(" ", "");
		String reverse = "";

		for (int i = input.length() - 1; i >= 0; i--){
			reverse = reverse + input.charAt(i);	
		}
		
		if(input.equals(reverse)) {
			System.out.println("Palindrome");
		} else {
			System.out.println("Bukan Palindrome");
		}

//		ArrayList<String> cities = new ArrayList<String>();
//
//		cities.add("input");
//		cities.add("input");
//
//		cities.forEach(city -> {
//
//		});
	}
}