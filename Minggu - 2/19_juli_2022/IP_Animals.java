class Animals {
    protected String name;
    protected String food_type;
    protected String teeth;

    public void setName(String name) {
        this.name = name;
    }

    public void setFoodType(String food_type) {
        this.food_type = food_type;
    }

    public void setTeeth(String teeth) {
        this.teeth = teeth;
    }

    public String getName() {
        return name;
    }

    public String getFoodType() {
        return food_type;
    }

    public String getTeeth() {
        return teeth;
    }

    public Animals(){}

    public void identifyMyself(){
        System.out.println("Hi I'm Parent of ALL Animals. my name is " + name );
    }
}

class Herbivore extends Animals {
    public Herbivore(){
        super();
    }

    @Override
    public void identifyMyself(){
        System.out.println("Hi I'm Herbivore. My name is " + super.name + ", my food is " + super.food_type + ", I have " + teeth + " teeth");
    }
}

class Carnivore extends Animals {
    public Carnivore(){
        super();
    }

    @Override
    public void identifyMyself(){
        System.out.println("Hi I'm Carnivore. My name is " + super.name + ", my food is " + super.food_type + ", I have " + teeth + " teeth");
    }
}

class Omnivore extends Animals {
    public Omnivore(){
        super();
    }

    @Override
    public void identifyMyself(){
        System.out.println("Hi I'm Carnivore. My name is " + super.name + ", my food is " + super.food_type + ", I have " + teeth + " teeth");
    }
}

class IP_Animals {
    public static void main(String[] args) {
        // System.out.println("Hello world!");

        Animals hewan = new Animals();
        hewan.setName("Binatang");
        hewan.identifyMyself();

        System.out.println();

        Herbivore kuda = new Herbivore();
        kuda.setName("horse");
        kuda.setFoodType("grass");
        kuda.setTeeth("blunt");
        kuda.identifyMyself();

        System.out.println();

        Carnivore singa = new Carnivore();
        singa.setName("lion");
        singa.setFoodType("meat");
        singa.setTeeth("sharp");;
        singa.identifyMyself();

        System.out.println();

        Omnivore ayam = new Omnivore();
        ayam.setName("chicken");
        ayam.setFoodType("everything I see on sigth");
        ayam.setTeeth("sharp and blunt");
        ayam.identifyMyself();
    }
}