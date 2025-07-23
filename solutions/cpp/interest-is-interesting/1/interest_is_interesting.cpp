// interest_rate returns the interest rate for the provided balance.
double interest_rate(double balance) {
    double rate{};
    if      ( balance <     0 ) { rate = 3.213; }
    else if ( balance < 1'000 ) { rate = 0.5;   }
    else if ( balance < 5'000 ) { rate = 1.621; }
    else                        { rate = 2.475; }
    return rate;
}

// yearly_interest calculates the yearly interest for the provided balance.
double yearly_interest(double balance) {
    double rate = interest_rate(balance);
    return balance * rate / 100;
}

// annual_balance_update calculates the annual balance update, taking into
// account the interest rate.
double annual_balance_update(double balance) {
    double interest = yearly_interest(balance);
    return balance + interest;
}

// years_until_desired_balance calculates the minimum number of years required
// to reach the desired balance.
int years_until_desired_balance(double balance, double target_balance) {
    double inc_balance = balance;
    int years{};
    while ( inc_balance < target_balance ) {
        years++;
        inc_balance = annual_balance_update(inc_balance);
    }
    return years;
}
