class FoodChain
  VERSION = 2

  ANIMALS = %w[fly spider bird cat dog goat cow horse]
  LAST_LINE = "I don't know why she swallowed the fly. Perhaps she'll die."
  SECOND_LINES = {
    'fly' => '',
    'spider' => 'It wriggled and jiggled and tickled inside her.',
    'bird' => 'How absurd to swallow a bird!',
    'cat' => 'Imagine that, to swallow a cat!',
    'dog' => 'What a hog, to swallow a dog!',
    'goat' => 'Just opened her throat and swallowed a goat!',
    'cow' => "I don't know how she swallowed a cow!",
    'horse' => "She's dead, of course!"
  }

  def self.song
    lyrics = []
    ANIMALS.each_with_index do |a, i|
      lyrics << first_line(i)
      lyrics << SECOND_LINES[a] unless SECOND_LINES[a].empty?
      lyrics << what_eats_what(i) unless i == ANIMALS.size - 1
    end
    lyrics.join("\n") + "\n"
  end

  def self.first_line(n)
    "I know an old lady who swallowed a #{ANIMALS[n]}."
  end

  def self.swallow_lines(n)
    spider_line = ' that wriggled and jiggled and tickled inside her'
    str = "She swallowed the #{ANIMALS[n]} to catch the #{ANIMALS[n - 1]}"
    str += spider_line if ANIMALS[n - 1] == 'spider'
    str + '.'
  end

  def self.what_eats_what(n)
    str = []
    n.downto(1).each { |i| str << swallow_lines(i) }
    (str << LAST_LINE).join("\n") + "\n"
  end
end
