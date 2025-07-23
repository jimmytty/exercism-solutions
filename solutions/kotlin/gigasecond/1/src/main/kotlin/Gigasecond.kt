import java.time.LocalDate
import java.time.LocalDateTime

class Gigasecond {
    private val GIGASECOND_SECONDS: Long = 1_000_000_000
    val date: LocalDateTime

    // Constructor Overload
    constructor(localDate: LocalDate) {
        this.date = localDate.atStartOfDay().plusSeconds(GIGASECOND_SECONDS)
    }

    // Constructor Overload
    constructor(localDateTime: LocalDateTime) {
        this.date = localDateTime.plusSeconds(GIGASECOND_SECONDS)
    }
}