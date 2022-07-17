public class XO {
	public static void main(String[] args) {
		String input = "xoxo";
		input = input.toLowerCase().replaceAll(" ", "");
		int x = 0;
		int o = 0;
		
		for (int i = 0; i < input.length(); i++){
			if(input.charAt(i) == 'x'){
				x += 1;
			} else if (input.charAt(i) == 'o'){
				o += 1;
			}
		}

		System.out.println(x == o);
	}
}