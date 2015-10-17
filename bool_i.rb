class Integer
  def ddd
    x = self
    x%3 == 0 ? true : false
  end
end

puts 3.ddd #=> expect true
puts 5.ddd #=> expect false

def find2(x, y)
  #(x.split & y).size != 0 ? true : false #=> just second variant
  (x.split - y).empty?
end

puts find2('foobar', ['foo','bar', 'foobar']) #=> expect  true
puts find2('foobar', ['foo', 'bar', 'kremlin']) #=> expect false

def yDrop(x, y)
  y.times do
    x.shift
  end
  x
end

def xDrop(x, y)
  x.drop(y)
end

list = [0,1,2,3,4,5,6,7,8,9,0] 
puts arr = yDrop(list, 3).inspect #=> expect [3,4,5,6,7,8,9,0]
list = [0,1,2,3,4,5,6,7,8,9,0]
puts arr = yDrop(list, 8).inspect #=> expect [8,9,0]

puts '*********'
list = [0,1,2,3,4,5,6,7,8,9,0]
puts arr = xDrop(list, 3).inspect #=> expect [3,4,5,6,7,8,9,0]
list = [0,1,2,3,4,5,6,7,8,9,0]
puts arr = xDrop(list, 8).inspect #=> expect [8,9,0]

class Person
  def initialize(name, surname)
    @name, @surname = name, surname
  end

  def greet
    "Hello, #{@name} #{@surname}!"
  end
end

person = Person.new('Peter', 'Jackson')
puts person.greet
