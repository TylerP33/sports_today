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
	puts ""
	puts "Please choose a sport to see it's airing info.  Remember, all times are in Eastern Standard time."
	puts ""
	puts ""
	menu
	puts ""
	puts ""
	puts "To leave the program, just type exit and we'll get you out of here!"
	puts ""
	puts ""

	input = nil
	input = gets.downcase.strip

	
	case input

	when "football"
		info = SportsToday::Schedule.football
		show_info(info)

	when "baseball"
		info = SportsToday::Schedule.baseball
		show_info(info)

	when "college basketball"
		info = SportsToday::Schedule.college_basketball
		show_info(info)

	when "nba basketball"
		info = SportsToday::Schedule.nba_basketball
		show_info(info)

	when "hockey"
		info = SportsToday::Schedule.hockey
		show_info(info)

	when "soccer"
		info = SportsToday::Schedule.soccer
		show_info(info)

	when "tennis"
		info = SportsToday::Schedule.tennis
		show_info(info)

	when "golf"
		info = SportsToday::Schedule.golf
		show_info(info)

	when "wrestling"
		info = SportsToday::Schedule.wrestling
		show_info(info)

	when "motor Sports"
		info = SportsToday::Schedule.motor_sports
		show_info(info)

	when "other"
		info = SportsToday::Schedule.other
		show_info(info)

	when "exit"
		quit


	end

end

def show_info(info)
	info.each {|info| 
		puts""
		puts""
		puts "\n1. #{info.sport}"
		puts "\n2. #{info.time}"
		puts "\n3. #{info.description}"
		puts "\n4. #{info.matchup}"
		puts ""
		puts ""
	}
end

def menu
	puts "1.  Football"
	puts "2.  Baseball"
	puts "3.  College Basketball or NBA Basketball"
	puts "4.  Hockey"
	puts "5.  Soccer"
	puts "6.  Tennis"
	puts "7.  Golf"
	puts "8.  Wrestling"
	puts "9.  Motor Sports"
	puts "10. Other"
end

def quit
	puts "\n-------------------------------------"
	puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "\nThanks for checking out Sports Today!"
	puts "\n-------------------------------------"
	puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	exit
end







end
#Scraping has succesfully worked