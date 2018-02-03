class SportsToday::Scraper

	def self.get_page
		Nokogiri::HTML(open('http://www.tvguide.com/sports/live-today/'))
	end

	def self.scrape_schedule
		get_page.search("li .listings-program").text
	end

end
