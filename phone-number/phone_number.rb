class PhoneNumber
  attr_reader :number
  attr_reader :area_code

  def initialize(num)
    @number = num.tr('()\-. ', '')
    if @number.size == 11 && @number[0] == '1'
      @number = @number[1..-1]
    elsif @number.size != 10 || @number =~ /\D/
      @number = bad_num
    end
    @area_code = @number[0..2]
  end

  def bad_num
    '0' * 10
  end

  def to_s
    "(#{@area_code}) #{@number[3..5]}-#{@number[6..-1]}"
  end
end