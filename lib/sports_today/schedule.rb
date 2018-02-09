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
		all.select {|object| object.sport.include?(sport || sport1) || object.description.include?(sport) || object.matchup.include?(sport) || object.time.include?(sport) }
	end


	def self.football
		select_by("Football")
	end


	def self.baseball 
		select_by("Baseball")
	end

	def self.college_basketball
		select_by("College Basketball")
	end

	def self.nba_basketball
		select_by("NBA")
	end


	def self.hockey
		select_by("Hockey")
	end


	def self.soccer
		select_by("Soccer")
	end


	def self.tennis
		select_by("Tennis")
	end


	def self.golf
		select_by("Golf")
	end


	def self.wrestling
		select_by("WWE")
	end


	def self.motor_sports
		select_by("Auto")
	end


	def self.all_events
		select_by("")
	end

end



