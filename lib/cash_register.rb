require 'pry'

class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount = 0)
    @discount =  discount
    @total = 0
  end #initialize

  def add_item(item_title, price)

  end #add_item

  def apply_discount
    @total = (1-@discount.to_f/100)*@total
    discount != 0 ? "After the discount, the total coems to $#{@total}." : "There is no discount to apply."
  end #apply_discount

end #CashRegister
