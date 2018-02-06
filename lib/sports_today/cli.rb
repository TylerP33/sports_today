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
	

	case input

	when "Football"
		info = SportsToday::Schedule.football
		show_info(info)

	when "Baseball"
		info = SportsToday::Schedule.baseball
		show_info(info)

	when "Basketball"
		info = SportsToday::Schedule.basketball
		show_info(info)

	when "Hockey"
		info = SportsToday::Schedule.hockey
		show_info(info)

	when "Soccer"
		info = SportsToday::Schedule.soccer
		show_info(info)

	when "Tennis"
		info = SportsToday::Schedule.tennis
		show_info(info)

	when "Golf"
		info = SportsToday::Schedule.golf
		show_info(info)

	when "Wrestling"
		info = SportsToday::Schedule.wrestling
		show_info(info)

	when "Motor Sports"
		info = SportsToday::Schedule.motor_sports
		show_info(info)

	when "Other"
		info = SportsToday::Schedule.other
		show_info(info)
	end

end

def show_info(info)
	puts ""
	puts "\n1. #{info.sport}"
	puts "\n2. #{info.time}"
	puts "\n3. #{info.description}"
    puts "\n4. #{info.matchup}"
    puts ""
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