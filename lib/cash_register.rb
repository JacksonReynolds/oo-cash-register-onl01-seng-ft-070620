require 'pry'

class CashRegister

  attr_accessor :total, :last_item, :discount, :items

  def initialize(discount = 0)
    self.discount =  discount
    self.total = 0
    self.items = []
  end #initialize

  def add_item(item_title, price, qty = 1)
    self.last_item = {name: item_title, price: price, qty: qty}
    self.total += price*qty
    qty.times {@items << item_title}
  end #add_item

  def apply_discount
    self.total = (1-self.discount.to_f/100)*self.total
    discount != 0 ? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
  end #apply_discount

  def void_last_transaction
    self.last_item[:qty].times {self.toal - self.last_item[:price]}
  end #void_last_transaction

end #CashRegister
