class SportsToday::Schedule

	attr_accessor :sport, :matchup, :time, :description

	@@all = []

	def self.new_from_schedule(schedule)
	  self.new(
		schedule.search("h3.listings-program-title").text, #sport
		schedule.search("p.listings-program-episode-title").text, #matchup
		schedule.search("p.listings-program-airing-info").text, #time
		schedule.search("p.listings-program-description") #description
		)
	end


	def initialize(sport=nil, matchup=nil, time=nil, description = nil)
		@sport = sport
		@matchup = matchup
		@time = time
		@description = nil
		@@all << self
	end

	def self.all 
		@@all
	end

	def self.find(id)
		self.all[id-1]
	end
end 

