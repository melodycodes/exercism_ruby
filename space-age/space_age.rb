class SpaceAge
  attr_reader :seconds

  EARTH_TO_PLANET = {
    'earth' => 1.0,
    'mercury' => 0.2408467,
    'venus' => 0.61519726,
    'mars' => 1.8808158,
    'jupiter' => 11.862615,
    'saturn' => 29.447498,
    'uranus' => 84.016846,
    'neptune' => 164.79132
  }

  def initialize(s)
    @seconds = s
    @earth_year = @seconds / 31_557_600.0

    EARTH_TO_PLANET.each do |k, v|
      self.class.send(:define_method, "on_#{k}") do
        @earth_year / v
      end
    end
  end
end
