require 'pry'

class CashRegister

  attr_accessor :discount, :total, :title, :price

  @@all = []

  def initialize (discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item (title, price, quantity = 1)
    @total += price*quantity
  end

  def apply_discount
    @total = @total*(discount/100)
  end

end
