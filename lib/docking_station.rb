class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  
  def release_bike
    Bike.new
  end
  
  def dock(number)
    @bikes << number
  end
  
  def has_bikes?
    @bikes.count > 0
  end
end

