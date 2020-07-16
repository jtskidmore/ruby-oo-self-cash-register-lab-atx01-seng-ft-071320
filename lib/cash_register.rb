require 'pry'

class CashRegister

  attr_accessor :discount, :total

  @@all = []

  def initialize (discount = 0)
    @discount = discount
    @total = 0
  end

end
