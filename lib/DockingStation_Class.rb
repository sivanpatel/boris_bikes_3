require_relative 'Bike_Class'  # => true

class DockingStation
	attr_accessor :capacity  # => nil

	def initialize(capacity=20)
		@bikes =[]
		@broken_bikes =[]                  # => []
		@capacity = capacity        # => 20
	end

	def dock (bike)
		fail 'Docking Station full' if full?
		if bike.broken == true
			broken_bikes << bike
		else
			bikes << bike
		end

	end

	def release_bike
		fail "No bikes available" if empty?
		bikes.pop

	end

	def get_capacity
		@capacity        # => 20
	end
	private           # => DockingStation

	attr_reader :bikes  # => nil
	attr_reader :broken_bikes

	def full?
		bikes.count + broken_bikes.count >= @capacity
	end

	def empty?
		bikes.empty?
	end
end


# >> 20
