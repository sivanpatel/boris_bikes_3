require_relative 'Bike_Class'  # => true

class DockingStation
	attr_reader :capacity  # => nil

	def initialize(capacity=20)
		@bikes =[]                  # => []
		@capacity = capacity        # => 20
	end

	def dock (bike)
		fail 'Docking Station full' if full?
		bikes << bike
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

	def full?
		bikes.count >= @capacity
	end

	def empty?
		bikes.empty?
	end



end

puts DockingStation.new.get_capacity  # => nil

# >> 20
