require_relative 'Ingredient'
require_relative 'MilkShake'
require_relative 'ShakeShop'


mint = Ingredient.new("Mint", 5)
chocolate = Ingredient.new("Chocolate", 1)
banana = Ingredient.new("Banana", 2)

nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate)


afterEight_milkshake = MilkShake.new
afterEight_milkshake.add_ingredient(banana)
afterEight_milkshake.add_ingredient(chocolate)

myOrder = ShakeShop.new
myOrder.add_milkshakes(nizars_milkshake)
myOrder.add_milkshakes(afterEight_milkshake)

puts "The total cost is: #{myOrder.totalPrice}"