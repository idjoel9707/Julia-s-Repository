interface VehicleSpecialActions{
    public void doAutoPark();
    public void openSunRoof();
}

class Vehicle implements VehicleSpecialActions{
    private String brand;
    private String color;
    private int price;

    public Vehicle(){

    }

    public Vehicle(String brand, String color, int price){
        this.brand = brand;
        this.color = color;
        this.price = price;
    }

    public void setBrand(String brand){
        this.brand = brand;
    }
    public void setColor(String color){
        this.color = color;
    }
    public void setPrice(int price){
        this.price = price;
    }
    @Override
    public void doAutoPark(){
        System.out.println("Automated parking is activated ...")
    }
    @Override
    public void openSunRoof(){
        System.out.println("Sun roof is activated ...")
    }
}

public class Showroom {

}