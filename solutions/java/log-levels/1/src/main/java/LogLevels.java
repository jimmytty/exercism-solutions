public class LogLevels {

    private static String logLevel;
    private static String logMessage;

    private static void parseLogLine(String logLine) {
        String[] string = logLine.split("]:", 2);
        logLevel        = string[0].replace("[", "");
        logMessage      = string[1].trim();
    }

    public static String message(String logLine) {
        parseLogLine(logLine);
        return logMessage;
    }

    public static String logLevel(String logLine) {
        parseLogLine(logLine);
        return logLevel.toLowerCase();
    }

    public static String reformat(String logLine) {
        parseLogLine(logLine);
        return "".format("%s (%s)", logMessage, logLevel.toLowerCase());
    }
}
