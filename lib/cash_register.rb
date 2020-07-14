require 'pry'

class CashRegister

  attr_accessor :total, :last_item_title, :last_item_price
  attr_reader :discount, :items

  def initialize(discount = 0)
    self.discount =  discount
    self.total = 0
    self.items = []
  end #initialize

  def add_item(item_title, price, qty = 1)
    self.last_item_title = item_title
    self.last_item_price = price
    self.total += price*qty
    qty.times {@items << item_title}
  end #add_item

  def apply_discount
    self.total = (1-self.discount.to_f/100)*self.total
    discount != 0 ? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
  end #apply_discount

  def items
    @items
  end #items

  def void_last_transaction

  end #void_last_transaction

end #CashRegister
