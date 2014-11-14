@items = {"Founder's KBS" => 17,
		"Bell's HopSlam" => 11,
		"Founder's Porter" => 19,
		"Anderson Valley Burboun Barrel Stout" => 9}

def list_items
@items.each do |beer, quantity|
	puts "We have #{quantity} bottles of #{beer}"
end
end

list_items

puts "Would you like to edit these items?"
answ = gets.chomp.downcase

if answ == "yes" || answ == "y" 
	puts "Please enter the item you would like to edit:"

	@input = gets.chomp.downcase

		if @input == "founder's kbs"
			@input = "Founder's KBS"
			puts "Great! What is the new quantity"
			@update = gets.chomp.to_i
			@items[@input] = @update
			puts "The total has been updated to #{@update} bottles of #{@input}."
		end

list_items

end

