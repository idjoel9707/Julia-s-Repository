public class Showroom{
    public static void main(String[] args) {
        Vehicle mobil = new Vehicle();
        mobil.setBrand = "Suzuki";
        mobil.setName = "MobIL";

        System.out.println("brand : " + mobil.getBrand());
    }
}
public class Vehicle{
    private String brand;
    private String name;

    public Kendaraan(String brand, String name){
        this.brand = brand;
        this.name = name;
    }

    public String setBrand(String brand) {
        this.brand = brand;
    }

    public String setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getName() {
        return this.name;
    }
}