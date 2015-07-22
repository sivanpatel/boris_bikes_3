require 'DockingStation_Class'
require 'Bike_Class'

describe DockingStation do

	it{is_expected.to respond_to(:release_bike)}
	
	it "releases working bike" do
		subject.dock Bike.new
		bike = subject.release_bike
		expect(bike).to be_working
	end

	it { is_expected.to respond_to(:dock).with(1).argument}

	describe "#releases_bike" do
		it "releases bike only when bikes are available" do
			expect{subject.release_bike}.to raise_error "No bikes available"
		end
	end


end