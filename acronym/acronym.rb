class Acronym
  VERSION = 1

  def self.abbreviate(phrase)
    # Check for case where acronym is already present
    return $1 if phrase =~ /\b([A-Z]+)\b/

    phrase.gsub(/\b\w/, &:upcase).scan(/[A-Z]/).join
  end
end