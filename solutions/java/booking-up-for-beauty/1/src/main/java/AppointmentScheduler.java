import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

class AppointmentScheduler {
    public LocalDateTime schedule(String appointmentDateDescription) {
        String pattern = "MM/dd/yyyy HH:mm:ss";
        DateTimeFormatter parser = DateTimeFormatter.ofPattern(pattern);
        return LocalDateTime.parse(appointmentDateDescription, parser);
    }

    public boolean hasPassed(LocalDateTime appointmentDate) {
        return LocalDateTime.now().isAfter(appointmentDate);
    }

    public boolean isAfternoonAppointment(LocalDateTime appointmentDate) {
        int hour   = appointmentDate.getHour();
        int minute = appointmentDate.getMinute();
        int hm     = hour * 100 + minute;
        return hm >= 1200 && hm < 1800;
    }

    public String getDescription(LocalDateTime appointmentDate) {
        String pattern            = "EEEE, MMMM d, yyyy, 'at' h:mm a";
        DateTimeFormatter printer = DateTimeFormatter.ofPattern(pattern);
        String dateString         = printer.format(appointmentDate);
        String format             = "You have an appointment on %s.";
        String description        = String.format(format, dateString);
        return description;
    }

    public LocalDate getAnniversaryDate() {
        int currentYear = LocalDate.now().getYear();
        return LocalDate.of(currentYear, 9, 15);
    }
}
