public class SalaryCalculator {
    public double salaryMultiplier(int daysSkipped) {
        return daysSkipped >= 5 ? 0.85 : 1.0;
    }

    public int bonusMultiplier(int productsSold) {
        return productsSold >= 20 ? 13 : 10;
    }

    public double bonusForProductsSold(int productsSold) {
        return (double) bonusMultiplier(productsSold) * productsSold;
    }

    public double finalSalary(int daysSkipped, int productsSold) {
        double salary
            = 1000.00
            * salaryMultiplier(daysSkipped)
            + bonusForProductsSold(productsSold);
        double cap = 2000.000;
        return salary > cap ? cap : salary;
    }
}
