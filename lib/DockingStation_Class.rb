require_relative 'Bike_Class'

class DockingStation
	attr_reader :capacity
	DEFAULT_CAPACITY = 20

	def initialize
		@bike =[]
		@capacity = DEFAULT_CAPACITY
	end

	def release_bike
		fail "No bikes available" if empty?
		@bike.pop
	end

	def dock (bike)
		fail 'Docking Station full' if full?
		@bike << bike
	end

	private

	def full?
		@bike.count >= @capacity
	end

	def empty?
		@bike.empty?
	end
end
