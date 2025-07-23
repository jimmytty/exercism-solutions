class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    success_rate = 77.0
    if @speed <= 4
      success_rate = 100.0
    elsif @speed <= 8
      success_rate = 90.0
    elsif @speed <= 9
      success_rate = 80.0
    end
    return @speed * 221.0 * success_rate / 100
  end

  def working_items_per_minute
    return (production_rate_per_hour / 60).floor
  end
end
