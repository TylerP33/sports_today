class SportsToday::CLI

def call
	start
end

def start
	puts "---------------------------------"
	puts "Welcome to the World of Sports!"
	puts "---------------------------------"
	puts ""
	list
	puts ""
	puts "Here is a list of sports.  To see if your preferred sport is on today, type in the specific sport below:"
	puts ""
	puts ""
	puts ""
	
	input = nil
	input = gets.strip

	if input == "Basketball"
		puts "hello"
	end
end




def list
	puts "\n1. Basketball"
	puts "\n2. Football"
	puts "\n3. Baseball"
	puts "\n4. Racing"
	puts "\n5. Tennis"
	puts "\n6. Horse Racing"
	puts "\n7. Auto Racing"
	puts "\n8. Track and Field"
end

end