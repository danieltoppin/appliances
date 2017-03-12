require './lib/appliances.rb'
class Microwave < Appliances
	#instance methods
	def initialize(door:, timer:, power:)
		@door = door
		@timer = timer
		@power = power
	end

	def timer_on?
		@timer == :on
	end

	def start
		if (door_closed? && timer_on? && power_on?)
			'Microwave is starting...'
		else
			'Microwave could not start'
		end
	end

	def self.create(door:, timer:, power:)
		Microwave.new(door: door, timer: timer, power: power)
	end
end