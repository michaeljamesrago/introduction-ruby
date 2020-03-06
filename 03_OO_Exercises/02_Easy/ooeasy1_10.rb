class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end
class Car < Vehicle
  WHEELS = 4
  def wheels
    WHEELS
  end
end

class Motorcycle < Vehicle
  WHEELS = 2
  def wheels
    WHEELS
  end
end

class Truck < Vehicle
  attr_reader :payload
  WHEELS = 6

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    WHEELS
  end
end
car = Car.new('Ford', 'Focus')
motorcycle = Motorcycle.new('Kawasaki', 'Motorthing')
truck = Truck.new('Toyota', 'Tacoma', '1800 lbs')
puts car.wheels
puts motorcycle.wheels
puts truck.wheels
