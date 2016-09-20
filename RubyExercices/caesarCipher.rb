#Caesar's Cipher
# Ordinal of each 'special' letter
#a=97
#A=65
#z=122
#Z=90

#Function to cipher a message with a default left shift of 3
def solve_cipher (message, shift:-3)
  
  #Iterate over message
  message.each_char do |c|


  	#Calculate the integer ordinal of the char
  	index = c.ord

  	
  	#If lower case
  	if (97..122) === index
	  	#Positive shift
	  	if shift > 0
	  		#If it's a "special" letter apply the "special" cipher , if not apply the "normal cipher" 
	  		if index+shift>122
	  			print (97+(index+shift-123)).chr  		
	  		else 
	  			print (index+shift).chr
	  		end
	  	#Negative shift
	  	elsif shift < 0 
	  		#If it's a "special" letter apply the "special" cipher , if not apply the "normal cipher" 
	  		if index+shift<97
	  			print (123-(97-index)+shift).chr  		
	  		else 
	  			print (index+shift).chr
	  		end

	  	else
	  		print index.chr  		
	  	end
	#If upper case
	elsif (65..90) === index
	  	#Positive shift
	  	if shift > 0 
	  		#If it's a "special" letter apply the "special" cipher , if not apply the "normal cipher"
	  		if index+shift>90
	  			print (65+(index+shift-91)).chr  		
	  		else 
	  			print (index+shift).chr
	  		end
	  	#Negative shift
	  	elsif shift < 0 
	  		#If it's a "special" letter apply the "special" cipher , if not apply the "normal cipher" 
	  		if index+shift<65
	  			print (91-(65-index)+shift).chr  		
	  		else 
	  			print (index+shift).chr
	  		end

	  	else
	  		print index.chr  		
	  	end
	#If other character
	else		
	  		print index.chr  
	end
		
  		
  end
end

puts "What message do you want to cipher?"
message = gets.chomp
#puts "What shift do you want?"
#shift = gets.chomp.to_i



solve_cipher(message)

#solve_cipher("p| uhdo qdph lv grqdog gxfn")
#Correct cipher message
#solve_cipher("pb uhdo qdph lv Grqdog Gxfn")