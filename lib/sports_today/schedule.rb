class SportsToday::Schedule

	attr_accessor :sport, :description, :time

	@@all = []

	def self.new_from_schedule(schedule)
	  self.new(
		schedule.search("h3").text, #sport
		schedule.search("p.listings-program-description").text, #description
		schedule.search("p.listings-program-airing-info").text #time
		)
	end


	def initialize(sport=nil, description=nil, time=nil)
		@sport = sport
		@description = description
		@time = time
		@@all << self
	end

	def self.all 
		@@all
	end

	def self.find(id)
		self.all[id-1]
	end
end 

