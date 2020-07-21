=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
  def initialize(input_text)
    @input_text = input_text
  end

  def rows
    @input_text.each_line.map do |line|
      line.split.map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end
end
