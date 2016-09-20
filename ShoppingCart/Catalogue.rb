require_relative 'Product'

class Catalogue

  #A class variable to ensure an unique catalogue
  @@products = []

  def add_product(product)
    @@products.push(product)
  end

  #Add every product to the catalogue, starting with a empty one.
  def fill_catalogue()
    @@products.clear
    add_product(Product.new("Apples", 10))
    add_product(Product.new("Oranges", 5))
    add_product(Product.new("Banana", 20))
    add_product(Product.new("Watermelon", 1))
    add_product(Product.new("Vacuum cleaner", 150))
    add_product(Product.new("Anchovies",2))
  end

  def print_catalogue()
    @@products.each do |product|
      puts "#{product.name} costs: #{product.price}"
    end
  end

  def checkProduct(selected)
    @@products.each do |product|
      if product.name == selected.capitalize
        return true;
      end
    end
    return false
  end

  def getProduct(selected)
    @@products.each do |product|
      if product.name == selected.capitalize
        return product;
      end
    end
  end
end