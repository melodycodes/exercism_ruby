class Clock
  attr_reader :minutes

  def initialize(min = 0)
    @minutes = min
  end

  def self.at(hour, min = 0)
    minutes = min + 60 * hour
    new(minutes)
  end

  def +(other)
    @minutes += other
    self
  end

  def -(other)
    @minutes -= other
    self
  end

  def convert_to_hour_min(min)
    h, m = min.divmod(60)
    h = h % 24 if h >= 24
    h += 24 if h < 0
    [h, m]
  end

  def ==(other)
    @minutes == other.minutes
  end

  def to_s
    hour, min = convert_to_hour_min(@minutes)
    "#{hour.to_s.rjust(2, '0')}:#{min.to_s.rjust(2, '0')}"
  end
end
