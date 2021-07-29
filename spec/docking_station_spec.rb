require 'docking_station.rb'

describe DockingStation do
  docking_station = DockingStation.new
  bike1 = Bike.new(73, "working")
  bike2 = Bike.new(11, "working")

  it 'raises an error if no bikes are available' do
    expect { docking_station.release_bike }.to raise_error "No bikes available"
  end
  
  it 'checks docking station is functional' do
    expect(docking_station.has_bikes?).to eq false
    expect(docking_station).to respond_to(:release_bike)
    expect(bike1.working?).to eq true
    expect(docking_station).to respond_to(:dock)
  end
  
    it 'raises an error when docking if the docking station is at full capacity' do
    docking_station.dock(bike1)
    expect { docking_station.dock(bike2) }.to raise_error "Docking station is full"
  end
  
  it 'checks docking a bike works' do
    expect(docking_station).to have_attributes(:bikes => [bike1])
    expect(docking_station.has_bikes?).to eq true
  end

end