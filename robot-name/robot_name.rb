class Robot
  @@all_names = []
  attr_reader :name

  def initialize
    @name = generate_name
    @@all_names << @name
  end

  def generate_name
    # generate random first 2 chars
    generated = (0..1).map { rand(65..90).chr }
    # generate random 3 numbers
    generated += (0..2).map { rand(0..9) }
    generated = generated.join

    # check if new name already used
    if !already_exists?(generated)
      generated
    else
      generate_name # generate new name
    end
  end

  def already_exists?(new_name)
    @@all_names.include?(new_name)
  end

  def reset
    @name = generate_name
  end
end
