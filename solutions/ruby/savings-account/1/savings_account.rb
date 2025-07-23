module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      ir = 3.213
    elsif balance < 1000
      ir = 0.5
    elsif balance < 5000
      ir = 1.621
    else
      ir = 2.475
    end
    return ir
  end

  def self.annual_balance_update(balance)
    ir = self.interest_rate(balance)
    return balance + balance * ir / 100
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    future_balance = current_balance
    while future_balance < desired_balance
      ir = self.interest_rate(future_balance)
      future_balance += future_balance * ir / 100
      years += 1
    end
    return years
  end
end
