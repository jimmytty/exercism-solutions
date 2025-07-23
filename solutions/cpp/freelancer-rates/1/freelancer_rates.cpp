#include <cmath>

// daily_rate calculates the daily rate given an hourly rate
double daily_rate(double hourly_rate) {
    int billable_hours_per_day{8};
    return hourly_rate * billable_hours_per_day;
}

// apply_discount calculates the price after a discount
double apply_discount(double before_discount, double discount) {
    double after_discount{before_discount - before_discount * discount / 100};
    return after_discount;
}

// monthly_rate calculates the monthly rate, given an hourly rate and a discount
// The returned monthly rate is rounded up to the nearest integer.
int monthly_rate(double hourly_rate, double discount) {
    int monthly_billable_days{22};
    double d_rate{daily_rate(hourly_rate)};
    double a_discount{apply_discount(d_rate, discount)};
    int rate = ceil( a_discount * monthly_billable_days);
    return rate;
}

// days_in_budget calculates the number of workdays given a budget, hourly rate,
// and discount The returned number of days is rounded down (take the floor) to
// the next integer.
int days_in_budget(int budget, double hourly_rate, double discount) {
    double d_rate{daily_rate(hourly_rate)};
    double a_discount{apply_discount(d_rate, discount)};
    int days = floor(budget / a_discount);
    return days;
}
