require 'pry'

class CashRegister

  attr_accessor :discount, :total, :title, :price

  @@all = []

  def initialize (discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item (title, price)

  end

end
