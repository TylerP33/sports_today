class SportsToday::CLI

def call
	SportsToday::Scraper.new.make_schedule   
	puts "---------------------------------"
	puts "Welcome to the World of Sports!"
	puts "---------------------------------"
	start
end

def start
	puts ""
	puts "Please choose the time slot that you are interested in:"
	puts ""
	puts ""
	input = nil
	input = gets.strip
	info = SportsToday::Schedule.find(input.to_i)
	show_time(info)
end

def show_info(info)
	puts "\n#{info.sport}"
	puts "\n#{info.time}"
	puts "\n#{info.description}"
    puts "\n#{info.matchup}"
end






end

#Scraping has succesfully worked