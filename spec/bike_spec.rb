require 'bike'
describe Bike do
  it { expect(Bike.new(51, "working")).to respond_to(:working?) }
end