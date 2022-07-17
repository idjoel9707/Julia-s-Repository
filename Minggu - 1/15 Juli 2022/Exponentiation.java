import java.util.Scanner;

public class Exponentiation {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Input X: ");
		int x = sc.nextInt();
		System.out.println("Input E: ");
		int e = sc.nextInt();	
		int result = 1;
		for (int i = 1; i <= e; i++){
			result = result * x;
		}
		System.out.println(result);
	}
}