class Dog
  def initialize(name, age)
    @name = name
    @age  = age
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def age
    @age
  end

  def age=(age)
    @age = age
  end
end

dog = Dog.new('sparky', 3)
puts dog.name
puts dog.age
dog.name = 'fido'
puts dog.name
dog.age = 5
puts dog.age

class Cat
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age  = age
  end
end

cat = Cat.new('fluffy', 6)
puts cat.name
puts cat.age
cat.name = 'stinky'
puts cat.name
cat.age  = 8
puts cat.age
