class HelloWorld
  def initialize
  end

  def self.hello(name = nil)
    "Hello, " + (name.nil? ? "World" : name.to_s) + "!"
  end
end