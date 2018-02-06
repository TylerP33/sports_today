class SportsToday::Schedule

	attr_accessor :sport, :matchup, :time, :description

	@@all = []

	def self.new_from_schedule(schedule)
	  self.new(
		schedule.search("h3.listings-program-title").text, #sport
		schedule.search("h4.listings-program-episode-title").text.strip, #matchup
		schedule.search("p.listings-program-airing-info").text, #time
		schedule.search("p.listings-program-description").text #description
		)
	end


	def initialize(sport=nil, matchup=nil, time=nil, description=nil)
		@sport = sport
		@matchup = matchup
		@time = time
		@description = description
		@@all << self
	end

	def self.all 
		@@all
	end

	def self.select_by(sport)
		all.detect { |object| object.sport.include?(sport)}
	end

	def self.basketball
		select_by("Basketball")
	end

	def self.wrestling
		select_by("WWE")
	end

	def self.hockey
		select_by("Hockey")
	end

	def self.soccer
		select_by("Soccer")
	end
end 

