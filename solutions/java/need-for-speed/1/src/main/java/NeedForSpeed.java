class NeedForSpeed {
    private int battery  = 100;
    private int distance =   0;
    private int speed;
    private int batteryDrain;

    NeedForSpeed(int speed, int batteryDrain) {
        this.speed        = speed;
        this.batteryDrain = batteryDrain;
    }

    public boolean batteryDrained() {
        return this.battery < this.batteryDrain;
    }

    public int distanceDriven() {
        return this.distance;
    }

    public void drive() {
        if ( this.battery >= this.batteryDrain ) {
            this.distance += this.speed;
            this.battery  -= this.batteryDrain;
        }
    }

    public static NeedForSpeed nitro() {
        return new NeedForSpeed(50, 4);
    }
}

class RaceTrack {
    private int distance;

    RaceTrack(int distance) {
        this.distance = distance;
    }

    public boolean canFinishRace(NeedForSpeed car) {
        while ( ! car.batteryDrained() ) {
            car.drive();
        }
        return car.distanceDriven() >= this.distance;
    }
}
