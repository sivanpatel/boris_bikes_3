require 'DockingStation_Class'
require 'Bike_Class'

describe DockingStation do

	#it{is_expected.to respond_to(:release_bike)} #Can docking station release a bike?

	it "releases working bike" do #releases a bike that is working
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

	describe '#dock' do
		it 'raises an error if the docking station is full' do
			subject.get_capacity.times {subject.dock Bike.new}
			expect{subject.dock Bike.new}.to raise_error 'Docking Station full'
		end
	end

#	it "Has a default capacity" do
#		expect(subject.capacity).to eq subject.get_capacity
#	end

end
