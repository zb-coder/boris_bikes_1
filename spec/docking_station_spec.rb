require 'docking_station.rb'

describe DockingStation do
  docking_station = DockingStation.new
  bike1 = Bike.new

  it { expect(docking_station).to respond_to(:release_bike) }
  it { expect(bike1.working?).to eq true }
  it { expect(docking_station).to respond_to(:dock) }

  bike1.dock(docking_station)
  it { expects(docking_station).to have_attributes(:bikes => [bike1]) }

end