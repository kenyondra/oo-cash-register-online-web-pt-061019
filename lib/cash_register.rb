class CashRegister
  attr_accessor :total, :discount, :quantity, :price
  
  def initialize(discount = 0)
    @total = 0 
