puts "## Fizz - Buzz ##"

def ifDivisibleBy(n,mod)
	return n % mod == 0
end

def FizzBuzz(num, last, rules)

   #Loop init to end
	while num < last

	#init text each iteration
	text = ''

	#Apply all rules
	rules.each do |key, value|
  		if ifDivisibleBy(num,key)
	 	 text += value
	    end	
	end	

	#If no rules applied write the number
	if text == ''
		text += num.to_s
	end

	#Increse the num  
	  num +=1

	#Write the text  
	  puts text

	end
end


FizzBuzz(1,100,{3=>'Fizz', 5=>'Buzz'})