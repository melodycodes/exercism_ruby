class Robot
  @@all_names = []
  attr_reader :name

  def initialize
    @name = generate_name
    @@all_names << @name
  end

  def reset
    @name = generate_name
  end

  def generate_name
    # generate random robot name
    generated = (Array('A'..'Z').sample(2) + Array(0..9).sample(3)).join

    # check if this name is already in use
    # if so, regenerate
    # else, return name
    @@all_names.include?(generated) ? generate_name : generated
  end
end
