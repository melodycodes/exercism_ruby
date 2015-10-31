class Crypto
  attr_reader :size, :normalize_plaintext
  def initialize(str)
    @text = str
    @normalize_plaintext = @text.downcase.gsub(/\W/, '')
    @size = Math.sqrt(@normalize_plaintext.size).ceil
  end

  def plaintext_segments
    plaintext_rows.map(&:join)
  end

  def ciphertext
    pad_transpose_matrix.join
  end

  def normalize_ciphertext
    pad_transpose_matrix.join(' ')
  end

  private
  def plaintext_rows
    @normalize_plaintext.chars.each_slice(@size).to_a
  end

  def pad_transpose_matrix
    rsize = plaintext_rows[0].size
    plaintext_rows.map do |row|
      row += (row.size != rsize) ? [''] * (rsize - row.size) : []
    end.transpose.map(&:join)
  end
end
