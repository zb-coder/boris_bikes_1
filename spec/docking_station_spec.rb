require 'docking_station.rb'

describe DockingStation do
  docking_station = DockingStation.new
  bike1 = Bike.new(73, "working")
  it { expect(docking_station).to respond_to(:release_bike) }
  it { expect(bike1.working?).to eq true }
  it { expect(docking_station).to respond_to(:dock) }
docking_station.dock(bike1)
  it { expect(docking_station).to have_attributes(:bikes => [bike1]) }

end