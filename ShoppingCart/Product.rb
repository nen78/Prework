class Product
  #A product has two attributes: name and price
  attr_reader :name, :price
  def initialize(name, price)
    @name= name
    @price = price
  end
  def getPrice
      @price
  end
end

#A specialization of a product with a discount for price
class Houseware < Product
  def getPrice
    time = Time.new

    if @price > 100
      @price = 0.95*@price      
    else
      @price
    end      
  end
end

#A specialization of a product with a discount on Saturday or Sunday
class Fruit < Product
  def getPrice
    time = Time.new

    if time.wday < 2
      @price = 0.9*@price      
    else
      @price
    end      
  end
end