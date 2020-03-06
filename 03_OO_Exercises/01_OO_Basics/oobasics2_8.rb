class Person
  def initialize
    @secret = nil
  end

  def secret
    @secret
  end

  def secret=(value)
    @secret = value
  end

  # #secret and #secret= can be replaced by attr_accessor :secret
end
person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret
