import java.time.LocalDate;
import java.time.LocalDateTime;

public class Gigasecond {

    private static final int GIGASECOND = 1000000000;

    private final LocalDateTime dateTime;

    public Gigasecond(LocalDate moment) {
        dateTime = moment.atStartOfDay().plusSeconds(GIGASECOND);
    }

    public Gigasecond(LocalDateTime moment) {
        dateTime = moment.plusSeconds(GIGASECOND);
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }
}
