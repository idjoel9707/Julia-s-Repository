import java.util.*;

class CheckPrimeNumber {
  public boolean check(int p){
    int prime = 0;
    
    for (int i = 1; i <= p; i++){
      if(p%i == 0) prime += 1;
    }
    
    boolean prima = (prime <= 2) ? true: false; 
    return prima;
  }
  
}

public class Main {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.println("Input : ");
    int n = sc.nextInt();

    CheckPrimeNumber cpn = new CheckPrimeNumber();
    System.out.println(cpn.check(n));
      
  }
}
