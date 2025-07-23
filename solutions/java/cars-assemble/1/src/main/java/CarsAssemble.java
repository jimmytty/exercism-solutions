public class CarsAssemble {

    public double productionRatePerHour(int speed) {
        double maxCars = speed * 221;
        double carsPerHour;
        if ( speed <= 4 ) {
            carsPerHour = maxCars;
        } else if ( speed <= 8 ) {
            carsPerHour = maxCars * 90 / 100;
        } else if ( speed == 9 ) {
            carsPerHour = maxCars * 80 / 100;
        } else {
            carsPerHour = maxCars * 77 / 100;
        }
        return carsPerHour;
    }

    public int workingItemsPerMinute(int speed) {
        int carsPerMinute = (int) productionRatePerHour(speed) / 60;
        return carsPerMinute;
    }
}
