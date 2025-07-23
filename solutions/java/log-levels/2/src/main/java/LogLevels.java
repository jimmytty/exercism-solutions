public class LogLevels {

    public static String message(String logLine) {
        int begin = logLine.indexOf(":");
        return logLine.substring(begin + 1).trim();
    }

    public static String logLevel(String logLine) {
        int end = logLine.indexOf("]");
        return logLine.substring(1, end).toLowerCase();
    }

    public static String reformat(String logLine) {
        String logLvl = logLevel(logLine);
        String logMsg = message(logLine);
        return "".format("%s (%s)", logMsg, logLvl);
    }

}
