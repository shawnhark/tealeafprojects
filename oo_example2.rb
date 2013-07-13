module Swimable
  def swim
    "I'm swimming!"
  end
end

module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_accessor :name

  def initialize(name)
  self.name = name
  end

  def speak
    "speak from animal"
  end

  def run
    "I'm running!"
  end
end

class Mamal < Animal
  def warm_bloodeed?
    true
  end
  include Swimable
end

class Dog < Mamal


end

class Cat < Mamal

end

spot = Dog.new('Spot')
spot.name = "Spotty"
puts spot.name
puts spot.speak
puts spot.run
puts spot.swim

puts '-----'
kitty = Cat.new('kitty')
puts kitty.run
puts kitty.warm_bloodeed?
puts kitty.swim
