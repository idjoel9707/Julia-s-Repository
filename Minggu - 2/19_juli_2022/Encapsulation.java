class Cat {
    String fur_color;
    int num_of_leg;

    Cat(String fur_color, int num_of_leg){
        this.fur_color = fur_color;
        this.num_of_leg = num_of_leg;
    };

    public void showIdentity(){
        System.out.println("Saya Kucing dengan detail, Warna bulu: " + fur_color + " dengan jumlah kaki " + num_of_leg);
    };

};
class Fish {
    String type;
    String feed;

    Fish(String type, String feed){
        this.type = type;
        this.feed = feed;
    };

    public void showIdentity(){
        System.out.println("Saya Ikan dengan detail, Jenis : " + type + ", makanan : " + feed);
    };
};
class Flower {
    String nama;
    String color;
    int number_of_petal;

    Flower(String nama, String color, int number_of_petal){
        this.nama = nama;
        this.color = color;
        this.number_of_petal = number_of_petal;
    };

    public void showIdentity(){
        System.out.println("Saya Bunga dengan detail, Jenis : " + nama + ", warna : " + color + ", jumlah kelopak : " + number_of_petal);
    };
};
class Car {
    String type;
    String color;
    int number_of_tire;

    Car(String type, String color, int number_of_tire){
        this.type = type;
        this.color = color;
        this.number_of_tire = number_of_tire;
    };

    public void showIdentity(){
        System.out.println("Saya Mobil dengan detail, Jenis : " + type + ", warna : " + color + ", jumlah ban : " + number_of_tire);
    };
};
class Encapsulation {
    public static void main(String[] args) {
        // System.out.println("Hello world!");
        // ## Cat ##
         Cat cat = new Cat("Hitam", 3);
         Cat kucing = new Cat("Orange", 4);
         Cat meow = new Cat("Putih", 4);
         cat.showIdentity();
         kucing.showIdentity();
         meow.showIdentity();

        // ## Fish ##
         Fish fish = new Fish("paus", "plankton");
         Fish ikan = new Fish("arwana", "jangkrik");
         fish.showIdentity();
         ikan.showIdentity();

        // ## Flower ##
         Flower flower = new Flower("melati", "ungu", 6);
         Flower bunga = new Flower("mawar", "hitam", 4);
         flower.showIdentity();
         bunga.showIdentity();

        // ## Car ##
        Car car = new Car("sedan", "merah", 4);
        Car mobil = new Car("truk", "hitam", 12);
        car.showIdentity();
        mobil.showIdentity();

    }
}