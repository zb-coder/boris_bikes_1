require 'docking_station.rb'

describe DockingStation do
  it 'release bike' do
    expect(DockingStation.new.release_bike).to eq ('release bike')
  end
end