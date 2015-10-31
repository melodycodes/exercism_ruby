class Clock
  attr_reader :minutes

  HOUR = 60
  DAY = 24 * HOUR

  def initialize(min = 0)
    @minutes = min % DAY
  end

  def self.at(hours, mins = 0)
    minutes = mins + HOUR * hours
    new(minutes)
  end

  def +(other)
    update_minutes(other)
    self
  end

  def -(other)
    update_minutes(-1 * other)
    self
  end

  def ==(other)
    @minutes == other.minutes
  end

  def to_s
    hour, min = @minutes.divmod(HOUR)
    "#{hour.to_s.rjust(2, '0')}:#{min.to_s.rjust(2, '0')}"
  end

  private

  def update_minutes(more_minutes)
    @minutes += more_minutes
    @minutes = @minutes % DAY
    @minutes += DAY if @minutes < 0
  end
end
