class Bob
  SILENT = ->(msg) { msg !~ /[^\s]/ }
  YELLING = ->(msg) { msg == msg.upcase && msg =~ /[A-Z]+/ }
  QUESTION = ->(msg) { msg[-1] == '?' }

  RESPONSES = {
    SILENT => 'Fine. Be that way!',
    YELLING => 'Whoa, chill out!',
    QUESTION => 'Sure.'
  }

  DEFAULT_RESPONSE = 'Whatever.'

  def hey(message = '')
    RESPONSES.each do |prompt, response|
      return response if prompt.call(message)
    end
    DEFAULT_RESPONSE
  end
end
