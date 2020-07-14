require 'pry'

class CashRegister

  attr_accessor :total
  attr_reader :discount, :items

  def initialize(discount = 0)
    @discount =  discount
    @total = 0
    @items = []
  end #initialize

  def add_item(item_title, price, qty = 1)
    @total += price*qty
    qty.times {@items << item_title}
  end #add_item

  def apply_discount
    @total = (1-@discount.to_f/100)*@total
    discount != 0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
  end #apply_discount

  def items
    @items
  end #items

end #CashRegister
