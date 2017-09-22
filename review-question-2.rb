# Finish the implementation of the Car class so it has the functionality described below

class Car
  attr_accessor :make, :model
  @@all = []

  def initialize(make:, model:)
    @make = make
    @model = model
    @@all << self
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end

end

# car1 = Car.new("volvo", "lightening")
# car2 = Car.new("bmw", "x5")
# car3 = Car.new("jeep", "grand cherokee")
# car1.make
# #=> "volvo"
# car1.model
# #=> "ligthening"

# car2.drive
# # => "VROOOOOOOOOOOOM!"

# Car.all
# #=> [car1, car2, car3]



car4 = Car.new(model: "italia", make: "ferrari")

car4.make
#=> "ferrari"
car4.model
#=> "italia"
