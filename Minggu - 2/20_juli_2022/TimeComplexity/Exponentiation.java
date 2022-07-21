class Exponentiation {
  int result = 1;
  public int pangkat(int x, int e) {
    if (e < 1) return result;
    
    result = result * x;
    return pangkat(x, e -1); 
  }
}

class Main {
  public static void main(String[] args) {
    Exponentiation exp = new Exponentiation();

    System.out.println(exp.pangkat(2, 3));
    
  }
}
