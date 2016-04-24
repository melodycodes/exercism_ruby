require 'set'

class Pangram
  ALPHABET = ('a'..'z').to_set
  VERSION = 1

  def self.is_pangram?(sentence)
    sentence = sentence.downcase
    return false unless sentence =~ /[a-z]/
    letters = sentence.gsub(/[^a-z]/,'').chars.to_set
    letters == ALPHABET
  end
end
