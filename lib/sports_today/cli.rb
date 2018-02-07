class SportsToday::CLI

def call
	SportsToday::Scraper.new.make_schedule   
	puts "-------------------------------"
	puts "Welcome to the World of Sports!"
	puts "-------------------------------"
	start
end

def start
	puts ""
	puts ""
	puts "Please choose a sport to see airing time and event information.  Remember, all times are in Eastern Standard time."
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
		post_search_options
	
		
	when "baseball"
		info = SportsToday::Schedule.baseball
		show_info(info)
		post_search_options

	when "college basketball"
		info = SportsToday::Schedule.college_basketball
		show_info(info) 
		post_search_options


	when "nba basketball"
		info = SportsToday::Schedule.nba_basketball
		show_info(info)
		post_search_options

	when "hockey"
		info = SportsToday::Schedule.hockey
		show_info(info)
		post_search_options

	when "soccer"
		info = SportsToday::Schedule.soccer
		show_info(info)
		post_search_options

	when "tennis"
		info = SportsToday::Schedule.tennis
		show_info(info)
		post_search_options

	when "golf"
		info = SportsToday::Schedule.golf
		show_info(info)
		post_search_options

	when "wrestling"
		info = SportsToday::Schedule.wrestling
		show_info(info)
		post_search_options

	when "motor sports"
		info = SportsToday::Schedule.motor_sports
		show_info(info)
		post_search_options

	when "other"
		info = SportsToday::Schedule.other
		show_info(info)
		post_search_options

	when "exit"
		quit


	end

end

def show_info(info)
	info.each {|info| 
		puts""
		puts""
		puts "\nEvent: #{info.sport}"
		puts "\nTime: #{info.time}"
		puts "\nDescription: #{info.description}"
		puts "\nMatchup: #{info.matchup}"
		puts ""
		puts ""
	}
end

def post_search_options
	puts ""
	puts ""
	puts ""
	puts "To see more options, please type menu.  To quit, type exit"
	input = nil
	input = gets.strip

	if input == "menu"
		start
	else 
		quit
	end
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