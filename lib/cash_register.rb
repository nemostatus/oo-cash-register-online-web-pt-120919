class CashRegister 
 
  attr_accessor :total, :discount, :last_transaction_amount,:items 
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount 
end 
def apply_discount 
  if @discount>0
 @discount= @discount/100.to_f
 @total = @total -(@total*(@discount))
 "After the discount, the total comes to $#{total.to_i}." 
 else 
  "There is no discount to apply." 
 end 
 end 
 
 def add_item(name,price,number=1)
   if number>1 
     i = 0
     while i<number
     @items << name 
     i+=1 
   end 
 else 
   @items << name 
 end 
 @total+=price*number
 @last_transaction_amount = @total 
 @total
 end 
 def void_last_transaction
   @total-=@last_transaction_amount
   
 end



