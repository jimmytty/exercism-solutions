import java.util.Random;

class CaptainsLog {

    private static final char[] PLANET_CLASSES = new char[]{'D', 'H', 'J', 'K', 'L', 'M', 'N', 'R', 'T', 'Y'};

    private Random random;

    CaptainsLog(Random random) {
        this.random = random;
    }

    char randomPlanetClass() {
        return PLANET_CLASSES[random.nextInt(PLANET_CLASSES.length)];
    }

    String randomShipRegistryNumber() {
        int min = 1000;
        int max = 9999 + 1;
        return String.format("NCC-%04d", min + random.nextInt(max - min));
    }

    double randomStardate() {
        int min = 41000;
        int max = 42000;
        return min + (max - min) * random.nextDouble();
    }
}
