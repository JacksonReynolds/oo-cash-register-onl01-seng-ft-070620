require 'pry'

class CashRegister

  attr_reader :total, :discount

  def initialize(discount = 0)
    @discount =  discount
    @total = 0
  end #initialize

  def add_item(item_title, price)

  end #add_item

  def apply_discount
    @total = (1-@discount.to_f/100)*@total
    "some message"
  end #apply_discount

end #CashRegister
