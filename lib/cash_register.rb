class CashRegister
  attr_accessor :total, :discount, :quantity, :price
  
  def initialize(discount = 0)
    @total = 0 
    @discount = 0 
    @price = 0 
    @quantity = 0 
    @items = [] 
    @transactions = []
  end
  
  def add_item(title, price, quantity = nil)
    previous = @total
    if quantity != nil
    @total += price * quantity 
    until i == 0 do 
      @items << title 
      i -= 1 
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

    
    
    
