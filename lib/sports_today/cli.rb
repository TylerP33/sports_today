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
	puts ""
	puts ""
	puts ""
	input = nil
	input = gets.strip
	info = SportsToday::Schedule.find(input.to_i)
	show_time(info)
end

def show_time(info)
	puts "\n#{info.time} \n#{info.description} \n#{info.sport}"
end






end

#Scraping has succesfully worked