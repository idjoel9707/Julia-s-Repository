import java.util.Scanner;

public class CetakTabelPerkalian {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Input : ");
		int input = sc.nextInt();

		for (int i = 1; i <= input; i++){
			int num = 0;
			for (int j = 1; j <= input; j++) {
				num = i * j;
				System.out.print(num + " ");
					
			}
			System.out.println();
		}
	}
}