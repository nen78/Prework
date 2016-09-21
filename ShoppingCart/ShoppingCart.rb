class ShoppingCart
  #Init with an empty list
  def initialize
      @products = []   
      @price = 0   
  end

  #Add a product to the list
  def add_product(product)
    @products.push(product)
  end

  #Calculate the total cost
  def totalPrice()
    #Add each product price to our total
    @products.each do |product|
      @price += product.getPrice 
    end
  #return the total price of the cart and if the number of products is greater than 5, it's has a discount
  if @products.size > 5
    @price = 0.9*@price  
   else
    @price 
   end 
  end
end