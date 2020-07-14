require 'pry'

  attr_reader :total, :discount

class CashRegister

  def initialize(discount = 0)
    @discount =  1 - discount.to_f/100
    
  end #initialize

end #CashRegister
