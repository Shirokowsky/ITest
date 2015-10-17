class Integer
  def can_be_trippled?
    self % 3 == 0
  end
end

puts 3.can_be_trippled? #=> expect true
puts 5.can_be_trippled? #=> expect false

def find(x, y)
  !y.grep(x).empty?
end

puts '** find test **'
puts find('foobar something', ['foo','bar', 'foobar something']) #=> expect  true
puts find('foobar something', ['foo', 'bar', 'kremlin']) #=> expect false
puts '** find test end **'

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
