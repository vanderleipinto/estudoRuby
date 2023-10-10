#https://exercism.org/tracks/ruby/exercises/savings-account/edit

module SavingsAccount
  def self.interest_rate(balance)
    if balance < 1000 && balance >= 0
      return 0.5
    elsif balance >= 1000 && balance < 5000
      return 1.621.to_f
    elsif balance >= 5000
      return 2.475.to_f
    end
  return 3.213  
  end

  def self.annual_balance_update(balance)
    p "Balance = #{balance}"
    p "interest_rate = #{self.interest_rate(balance)}"
    return balance + balance * (self.interest_rate(balance))/100
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
  year = 0  
    until current_balance >= desired_balance
      current_balance = annual_balance_update(current_balance)
      year +=1
    end
      return year
  end
end
