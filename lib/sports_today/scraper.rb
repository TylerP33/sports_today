class SportsToday::Scraper

	def get_page
		Nokogiri::HTML(open("http://www.tvguide.com/sports/live-today/"))
	end

	def scrape_schedule_info
		self.get_page.css("ul.listings-program-list")
	end

	def make_schedule
		scrape_schedule_info.each do |schedule|
			SportsToday::Schedule.new_from_schedule(schedule)
		end
	end
end

