class SportsToday::CLI

def call
	start
end

def start
	puts "---------------------------------"
	puts "Welcome to the World of Sports!"
	puts "---------------------------------"
	puts ""
	puts "Here is a list of sports.  To see if your preferred sport is on today, type in the specific sport below:"
	puts ""
	list
	puts ""
	puts ""
	puts ""
	puts ""
	
	input = nil
	input = gets.strip

	if input == "Basketball"
		puts "7:30 PM"
	end
end




def list
	SportsToday::Scraper.scrape_schedule
end

end

#Debating on how I want "list" to look.  I can easily do the scheduled times of the day and from there, grab more info