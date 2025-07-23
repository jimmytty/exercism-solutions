public class ElonsToyCar {

    private int distance = 0;
    private int battery  = 100;  
    
    public static ElonsToyCar buy() {
        return new ElonsToyCar();
    }

    public String distanceDisplay() {
        String ledMessage = String.format("Driven %d meters", distance);
        return ledMessage;
    }

    public String batteryDisplay() {
        String ledMessage;
        if ( battery > 0 ) {
            ledMessage = String.format("Battery at %d%%", battery);
        } else { ledMessage = "Battery empty"; }
        return ledMessage;
    }

    public void drive() {
        if ( battery > 0 ) {
            distance += 20;
            battery  -=  1;
        }
    }

}
