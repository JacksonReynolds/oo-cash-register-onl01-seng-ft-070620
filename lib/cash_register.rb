require 'pry'

  attr_reader :total, :discount

class CashRegister

  def initialize(discount = 0)
    @discount =  1 - discount.to_f/100
    @total = 0
  end #initialize

  def add_item(item_title, price)

  end #add_item

  def apply_discount
    @total = @discount*@total
    "some message"
  end #apply_discount

end #CashRegister
