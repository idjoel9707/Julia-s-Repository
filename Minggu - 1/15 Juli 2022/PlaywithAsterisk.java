import java.util.Scanner;

public class PlaywithAsterisk {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Input : ");
		int row = sc.nextInt();
		for (int i = 0; i < row; i++){
			for (int j = row - i; j > 0; j--) {
				System.out.print(" ");
			}
			for (int j = 0; j <= i; j++) {
				System.out.print("* ");
			}
			System.out.println();
		}
	}
}