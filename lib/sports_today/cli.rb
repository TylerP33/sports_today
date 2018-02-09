class SportsToday::CLI


def call
	SportsToday::Scraper.new.make_schedule   
	puts "|---------------------------------|"
	puts "| Welcome to the World of Sports! |"
	puts "|---------------------------------|"
	start
end


def start
	puts ""
	puts ""
	puts "Please choose a sport to find out event information and TV airing time.  The sport genre must be typed."
	puts ""
	puts "Remember, all times are in Eastern Standard time."
	puts ""
	menu
	puts ""
	puts ""
	puts "To leave the program, just type exit and we'll get you out of here!"
	puts ""
	puts ""
	user_input
end


def user_input

	input = nil
	input = gets.strip.downcase

	case input

	when  "football"
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

	when "all events"
		info = SportsToday::Schedule.all_events
		show_info(info)
		post_search_options

	when "exit"
		quit

	when "menu"
		start

	else
		wrong_search
		

	
	end


end


def show_info(info)
	info.collect {|info|
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
	puts "|---------------------------------------------------------------------------------------|"
	puts "|                                                                                       |"
	puts "| If no information came up, then your selected sport is not on TV today.               |"
	puts "|                                                                                       |"
	puts "| To see another option, just type the desired sport. To see the menu again, type menu. |"
	puts "|                                                                                       |"
	puts "| And if you want to make us sad, you can leave by typing exit.                         |"
	puts "|                                                                                       |"
	puts "|---------------------------------------------------------------------------------------|"
	puts ""
	puts ""
	user_input
end

def wrong_search
	puts ""
	puts ""
	puts "|---------------------------------------------------------------------------------------|"
	puts "|                                                                                       |"
	puts "| Sorry, that is not a menu option.  Make sure to check your spelling.                  |"
	puts "|                                                                                       |"
	puts "| To see another option, just type the desired sport. To see the menu again, type menu. |"
	puts "|                                                                                       |"
	puts "| And if you want to make us sad, you can leave by typing exit.                         |"
	puts "|                                                                                       |"
	puts "|---------------------------------------------------------------------------------------|"
	puts ""
	puts ""
	user_input
end



def menu
	puts "\n1.  Football"
	puts "\n2.  Baseball"
	puts "\n3.  College Basketball or NBA Basketball"
	puts "\n4.  Hockey"
	puts "\n5.  Soccer"
	puts "\n6.  Tennis"
	puts "\n7.  Golf"
	puts "\n8.  Wrestling"
	puts "\n9.  Motor Sports"
	puts "\n10. All Events"
end


def quit
	puts ""
	puts ""
	puts "|---------------------------------------|"
	puts "| Thanks for checking out Sports Today! |"
	puts "|---------------------------------------|"
	puts ""
	puts ""
	exit
end







end
#Scraping has succesfully worked