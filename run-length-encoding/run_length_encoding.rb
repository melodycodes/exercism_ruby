class RunLengthEncoding
  def self.encode(sequence)
    sequence.chars.chunk { |n| n }.map do |letter, ary|
      size = ary.size
      if size > 1
        "#{size}#{letter}"
      else
        letter.to_s
      end
    end.join
  end

  def self.decode(sequence)
    sequence.gsub(/(\d+)(\D)/) do
      num = Regexp.last_match[1].to_i
      letter = Regexp.last_match[2]
      letter * num
    end
  end
end
