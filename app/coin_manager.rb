class CoinManager
  attr_reader :balance

  def initialize
    @balance = 0.0
  end

  def add_coins(amount)
    if amount >= 0
      @balance += amount
    end
  end

  def deduct_amount(amount)
    return false if amount > @balance

    @balance -= amount
    true
  end

  def reset_balance
    old = @balance
    @balance = 0.0
    old
  end
end
