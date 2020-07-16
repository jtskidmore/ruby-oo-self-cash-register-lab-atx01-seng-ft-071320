require 'pry'

class CashRegister

  attr_accessor :discount, :total

  def initialize (discount = )
    @discount = discount
    @total = 0
  end

end
