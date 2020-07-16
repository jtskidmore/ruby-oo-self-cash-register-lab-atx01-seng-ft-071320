require 'pry'

class CashRegister

  attr_accessor :discount, :total, :title, :price

  @@all = []

  def initialize (discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item (title, price, quantity = 1)
    @title = title
    @price = price
    @total = @total.to_f+(@price*@quantity)
    @quantity = quantity.to_f
    self.class.all << self
  end

  def self.all
    @@all
  end

  def items
    @@all
  end

  def apply_discount
    if discount != 0
      @total = @total-(@total*discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

end
