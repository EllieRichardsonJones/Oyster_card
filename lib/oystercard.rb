class Oystercard
  MAXIMUM_AMOUNT = 90
  
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail "Your top up limit of #{MAXIMUM_AMOUNT} has been reached" if amount + balance > MAXIMUM_AMOUNT
    @balance += amount
  end

end
