class CashRegister
  
  def initialize(discount = 1)
    @total = 0
    @discount = discount
    @items = []
  end 
   def apply_discount
    if @discount != 0
      @total = @total - (@discount/100.0 * @total)
      return "After the discount, the total comes to $#{@total.round}."
    else
      return "There is no discount to apply."
    end
  end
  
  def total 
    @total 
  end 
  
  def discount
    @discount
  end
  
  def total=(total)
    @total=total
  end  
  
  def items 
    @items
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
<<<<<<< HEAD
    quantity.times do 
      @items << title
    end 
  end
  
  def void_last_transaction
  end 

end
