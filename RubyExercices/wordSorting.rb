#WordSorting

#Function to sort an array alphabetically ignoring case and punctuation
def wordSorting (phrase)

	#Delete punctuation signs with a regex
	words = phrase.gsub(/[[:punct:]]/, '')

	#Split the phrase in words   	
	wordsX = words.split

	#Order the words without case sensitive
	wordsS =  wordsX.sort do |a, b|
  		a.upcase <=> b.upcase
	end
  
  #Print the result	
  puts wordsS
end

puts "What phrase do you want to order?"

wordSorting(gets.chomp)