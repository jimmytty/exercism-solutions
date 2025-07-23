class BirdWatcher {
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        if ( birdsPerDay.length == 0 ) {
            this.birdsPerDay = new int[] { 0 };
        }
        else this.birdsPerDay = birdsPerDay.clone();
    }

    public int[] getLastWeek() {
        return birdsPerDay;
    }

    public int getToday() {
        return birdsPerDay[birdsPerDay.length - 1];
    }

    public void incrementTodaysCount() {
        birdsPerDay[birdsPerDay.length - 1]++;
    }

    public boolean hasDayWithoutBirds() {
        boolean bool = false;
        for ( int i = 0; i < birdsPerDay.length; i++ ) {
            if ( birdsPerDay[i] == 0 ) {
                bool = true;
                break;
            }
        }
        return bool;
    }

    public int getCountForFirstDays(int numberOfDays) {
        int sum = 0;
        int days = numberOfDays;
        if ( numberOfDays > birdsPerDay.length ) days = birdsPerDay.length;
        for ( int i = 0; i < days; i++ ) sum += birdsPerDay[i];
        return sum;
    }

    public int getBusyDays() {
        int busyDays = 0;
        for ( int i = 0; i < birdsPerDay.length; i++ ) {
            if ( birdsPerDay[i] >= 5 ) busyDays++;
        }
        return busyDays;
    }
}
