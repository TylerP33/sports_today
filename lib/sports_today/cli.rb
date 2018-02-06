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
	puts "Please choose a sport to see if it is on today:"
	puts ""
	menu
	puts ""

	input = nil
	input = gets.strip
	info = SportsToday::Schedule.hockey

	case input

	when "Wrestling"
		show_info(info)

	when "Basketball"
		show_info(info)

	when "Hockey"
		show_info(info)
	end


end

def show_info(info)
	puts "\n1. #{info.sport}"
	puts "\n2. #{info.time}"
	puts "\n3. #{info.description}"
    puts "\n4. #{info.matchup}"
end

def menu
	puts "1.  Football"
	puts "2.  Baseball"
	puts "3.  Basketball"
	puts "4.  Hockey"
	puts "5.  Soccer"
	puts "6.  Tennis"
	puts "7.  Golf"
	puts "8.  Wrestling"
	puts "9.  Motor Sports"
	puts "10. Other"
end





end

#Scraping has succesfully worked