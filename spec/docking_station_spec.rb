require 'docking_station.rb'

describe DockingStation do
  it { expect(DockingStation.new).to respond_to(:release_bike) }
  it { expect(DockingStation.new.release_bike.working?).to eq true }
end