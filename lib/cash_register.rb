class CashRegister
 attr_accessor :total, :discount, :last_transaction_amount, :items
 
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
    if @discount > 0 
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items 
  end
  
  def void_last_transaction()
    @total -= @last_transaction_amount
  end
end

    
    
    
