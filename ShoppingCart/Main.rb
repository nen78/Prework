
require_relative 'Product'
require_relative 'Catalogue'
require_relative 'ShoppingCart'

#Init the catalogue and cart
catalogue = Catalogue.new
catalogue.fill_catalogue
catalogue.print_catalogue
cart = ShoppingCart.new

#Variable to control the flow of the purchase
continue = true

#Add a product to the list if it's a valid product. Return if a product is added or not 
def add(selected,catalogue,cart)
	if catalogue.checkProduct(selected)
		cart.add_product(catalogue.getProduct(selected))
		return true
	end

	return false
end

#Ask for the selection
def prompt
	puts "========================================="
	puts "What product do you want to buy?. If you don't want anything else, press Enter"
	puts "========================================="
	gets.chomp
end 

#The flow continues if the user wants to buy more products
while continue do
	
	#Capture the text inserted by the user
	selected = prompt

	#If the user press Enter, the flow finalizes
	if selected == ""
		continue = false

	#Else try to add the product	
	elsif add(selected, catalogue, cart)

			#If the product added, ask to continue the purchase
			puts "========================================="
			puts "Do you want anything else? (Y/N)"
			puts "========================================="
			if "N" == gets.chomp.upcase
				continue = false
			end
	else 

		#If the product not added, notify to the user and try again
		puts "========================================="
		puts "Your selection is not valid"
		puts "Please, select a product of the catalogue"
		puts "========================================="
	end	

	catalogue.print_catalogue
end

puts "========================================="
puts "The total cost is: #{cart.totalPrice}"
puts "========================================="