
class Bike
	attr_accessor :bike

	def initialize
		@bike = bike
	end
	def working?
		true
	end

	def broken
		if report_broken == 'true'
			true
		else
			false
		end
	end

   def report_broken
   		gets.chomp
   end


end
