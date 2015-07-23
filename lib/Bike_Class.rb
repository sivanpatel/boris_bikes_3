
class Bike
	attr_accessor :bike
	DEFAULT_WORKING = true
	DEFAULT_REPORT = false
	attr_accessor :working

	def initialize
		@bike = bike
		@working = DEFAULT_WORKING
	end

	def broken
		if @working == false
			true
		else
			false
		end
	end


end
