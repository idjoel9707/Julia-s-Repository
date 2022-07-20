class Vehicle {
    protected String name;
    protected boolean with_engine;

    public void setName(String name) {
        this.name = name;
    }

    public void setEngine(boolean with_engine) {
        this.with_engine = with_engine;
    }

    public String getName() {
        return name;
    }

    public boolean getEngine() {
        return with_engine;
    }

    public Vehicle(){}

    public void identifyMyself(){
        System.out.println("Hi I'm Parent of ALL Vehicle. my name is " + name + ", my engine status is " + with_engine);
    }
}

class Cars extends Vehicle {
    private int wheel_count;
    private String engine_type;

    public void setWheelCount(int wheel_count) {
        this.wheel_count = wheel_count;
    }

    public void setEngineType(String engine_type) {
        this.engine_type = engine_type;
    }

    public int getWheelCount() {
        return wheel_count;
    }

    public String getEngineType() {
        return engine_type;
    }


    public Cars(){
        super();
    }

    public void setEngine(boolean with_engine) {
        this.with_engine = with_engine;
    }
    @Override
    public void identifyMyself(){
        System.out.println("Hi I'm Car. my name is " + super.name + ", my engine status is " + super.with_engine + ", my engine type is " + engine_type + ", and I have " + wheel_count + " wheels.");
    }
}

class Bikes extends Vehicle {
    private int wheel_count;

    public void setWheelCount(int wheel_count) {
        this.wheel_count = wheel_count;
    }

    public int getWheelCount() {
        return wheel_count;
    }

    public Bikes(){
        super();
    }

    @Override
    public void identifyMyself(){
        System.out.println("Hi I'm Bike. my name is " + super.name + ", my engine status is " + super.with_engine + ", my engine type is " + ", and I have " + wheel_count + " wheels.");
    }
}

class Buses extends Vehicle {
    private int wheel_count;
    private boolean private_bus;

    public void setWheelCount(int wheel_count) {
        this.wheel_count = wheel_count;
    }

    public int getWheelCount() {
        return wheel_count;
    }

    public void setPrivateBus(boolean private_bus) {
        this.private_bus = private_bus;
    }

    public boolean getPrivateBus() {
        return private_bus;
    }

    public Buses(){
        super();
    }
    @Override
    public void identifyMyself(){
        System.out.println("Hi I'm Bus. my name is " + super.name + ", my engine status is " + super.with_engine + ". Am I a private bus ? " + private_bus + ", and I have " + wheel_count + " wheels.");
    }
}

class IP_Vehicle {
    public static void main(String[] args) {
        // System.out.println("Hello world!");

        Vehicle vehicle = new Vehicle();
        vehicle.setName("gerobak");
        vehicle.setEngine(false);
        vehicle.identifyMyself();

        Cars car = new Cars();
        car.setName("suzuki");
        car.setEngine(true);
        car.setWheelCount(4);
        car.setEngineType("Solar");
        car.identifyMyself();

        Bikes bike = new Bikes();
        bike.setName("sepeda");
        bike.setEngine(false);
        bike.setWheelCount(4);
        bike.identifyMyself();

        Buses bus = new Buses();
        bus.setName("bus");
        bus.setEngine(false);
        bus.setWheelCount(4);
        bus.setPrivateBus(true);
        bus.identifyMyself();
    }
}