require 'pry'

class CashRegister

  attr_accessor :discount, :total, :title, :price

  @@all = []

  def initialize (discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item (title, price, quantity = 1)
    @price = price
    @quantity = quantity.to_f
    @new_price = @price*@quantity
    @total += @new_price
    self.class.all << self
  end

  def self.all
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
