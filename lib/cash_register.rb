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
 





