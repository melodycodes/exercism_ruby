class Crypto
  attr_reader :size, :normalize_plaintext
  def initialize(str)
    @text = str
    @normalize_plaintext = @text.downcase.gsub(/[^0-9a-z]/, '')
    @size = Math.sqrt(@normalize_plaintext.size).ceil
    @rows = @normalize_plaintext.chars.each_slice(@size).to_a
  end

  def plaintext_segments
    @rows.map(&:join)
  end

  def ciphertext
    row_size = @rows[0].size
    padded = @rows.map {|i| i += (i.size != row_size) ? [''] * (row_size - i.size) : []}
    padded.transpose.map(&:join).join
  end
end
