#determines time
def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

#gets user's name
def get_name 
	print "Tell me your name. "
	get_name = gets.chop
	puts "Thanks #{get_name}"
	return get_name
end

#uses current time to generate greeting
def greeting 
	name = get_name 
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{name.capitalize}!"
end

greeting





