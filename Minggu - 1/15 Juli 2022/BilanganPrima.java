import java.util.Scanner;

public class BilanganPrima {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Input : ");
		int input = sc.nextInt();
		int prima = 0;

		for (int i = 1; i <= input; i++){
			if(input%i == 0){
				prima += 1;
			}	
		}

		if(prima <= 2) {
			System.out.println("Bilangan Prima");
		} else {
			System.out.println("Bukan Bilangan Prima");
		}
	}
}