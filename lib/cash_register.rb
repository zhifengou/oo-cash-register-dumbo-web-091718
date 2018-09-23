require 'pry'
class CashRegister
  attr_accessor:total,:item,:price,:quantity,:items,:discount,:last_transaction
  def initialize(discount=20)
    @total=0
    @discount=discount
    @items=[]
  end
  
  
  def add_item(item,price,quantity=1)
    @last_transaction=price*quantity
     @total+=@last_transaction
    while quantity>0
    items<< item
    quantity-=1
  end
  end 
  
  def apply_discount
    if self.total==0
    "There is no discount to apply."
  else
    self.total*=(100-@discount)/100.to_f
    "After the discount, the total comes to $#{self.total.to_i}."
  end 
end

def void_last_transaction
  @items.pop
  @total-=@last_transaction
end
end
