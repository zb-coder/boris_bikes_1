class Bike
  def initialize(number, quality)
    @number = number
    @quality = quality
  end
  def working?
    if @quality == "working"
      return true
    else
      return false
    end
  end
end