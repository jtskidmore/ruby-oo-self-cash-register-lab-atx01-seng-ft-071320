require 'pry'

class CashRegister

  attr_accessor :discount, :total, :title, :price, :quantity, :last_transaction

  def initialize (discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item (title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity.to_f
    @new_price = @price*@quantity
    @total += @new_price
    binding.pry
    @items << self
    @last_transaction << self
  end



  def apply_discount
    if discount != 0
      @total = @total-(@total*discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

end
