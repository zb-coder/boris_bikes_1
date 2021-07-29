class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  
  def release_bike
    raise "No bikes available" if has_bikes? == false
    bike = Bike.new(A, "working")
  end
  
  def dock(number)
    raise "Docking station is full" if @bikes.count == 1
    @bikes << number
  end
  
  def has_bikes?
    @bikes.count > 0
  end
end

