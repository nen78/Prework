class Product
  #A product has two attributes: name and price
  attr_reader :name, :price
  def initialize(name, price)
    @name= name
    @price = price
  end
end