class Person
  def name=(value)
    @first_name, @last_name = value.split
  end

  def name
    "#{first_name} #{last_name}"
  end

  private
  
  attr_reader :first_name, :last_name
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name
