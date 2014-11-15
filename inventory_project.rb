@kbs = "Founder's KBS"
@hop = "Bell's HopSlam"
@port = "Founder's Porter"
@av = "Anderson Valley Burboun Barrel Stout"

@items = {@kbs => 17,
		 @hop => 11,
		@port => 19,
		@av => 9}

def list_items
	@items.each do |beer, quantity|
		puts "We have #{quantity} bottles of #{beer}"
	end
	
	puts " "
	puts "Would you like to add anything else? (Y/N)"
	
	@answer = gets.chomp.downcase
		if @answer == "y" || @answer == "yes"
			edit_items
		else
			clear
			puts "Thanks! Make sure to enjoy a tasty beverage before you leave!"
		end
end

def prompt 
	clear

	puts "Please enter the item you would like to edit:"
	puts ""
	puts "Enter A for Founder's KBS"
	puts "Enter B for Bell's Hopslam"
	puts "Enter C for Founder's Porter"
	puts "Enter D for Anderson Valley Burboun Barrel Stout"
	puts ""
	
	puts "Type LIST for an up-to-date inventory list"
	puts " "
	puts "Type NEW to add a new inventory item"
	
end

def edit_items 
	clear
	prompt
	@input = gets.chomp.upcase
	
	until @input == "A"  || @input == "B"  ||  @input == "C"  ||  @input == "D"  || @input == "NEW" || @input == "LIST"
		clear
		puts "You have entered an invalid response"
		puts "Press ENTER to continue"
		puts "Press CTRL-C to EXIT"
		gets.chomp
		prompt
		@input = gets.chomp.upcase 
	end
				
	if @input == "A"
		@input = @kbs
	elsif @input == "B"
		@input = @hop
	elsif @input == "C"
		@input = @port
	elsif @input == "D"
		@input = @av
	elsif @input == "NEW"
		clear
		puts "Please enter a name for the NEW inventory item"
		@input = gets.chomp
	elsif @input == "LIST"	
		clear
		list_items		
	end

	clear
	puts "Great! What is the new quantity of #{@input}"
	@update = gets.chomp.to_i
	@items[@input] = @update
	
	clear
	puts "The total has been updated to #{@update} bottles of #{@input}"

	list_items

end

def clear
	system "clear" or system "cls"
end


list_items

	# if @input == "Q"
	# 	puts "Thanks for helping out with the inventory!"
	# end

