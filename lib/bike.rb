class Bike
  def initialize(number, condition)
    @number = number
    @condition = condition
  end
  def working?
    if @condition == "working"
      return true
    else
      return false
    end
  end
end