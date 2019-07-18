class CashRegister
  attr_accessor :total, :discount, :quantity, :price
  
  def initialize(discount = {})
    @total = 0 
    @discount = discount
  end
  
  
  def add_item(title, price, quantity = nil)
    previous = @total
    if quantity != nil
    @total += price * quantity
  else
    @total += price
    end
  end
  
  def apply_discount 
    if @discount == 0 
      "There is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i 
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items
    @items 
  end
  
  def void_last_transaction
    self.total = @total - @transactions.pop
  end
end

    
    
    
