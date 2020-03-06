module Transportation
  class Vehicle
  end

  class Car < Vehicle
  end

  class Truck < Vehicle
  end
end
car1 = Transportation::Car.new
puts car1
puts car1.class.ancestors
