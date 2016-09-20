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
    	@price += product.price 
    end
	#return the total price of the cart
    @price
  end
end