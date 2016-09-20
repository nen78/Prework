class ShakeShop
  def initialize
      @order = []   
      @price = 0   
  end
  def add_milkshakes(milkshake)
    @order.push(milkshake)
  end
  def totalPrice()
  	#Add each milk shake price to our total
    @order.each do |milkshake|
    	@price += milkshake.price_of_milkshake 
    end
	#return the total price of the order
    @price
  end
end