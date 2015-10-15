class Integer < Numeric
  def ddd
    x = self.to_i
    x%3 == 0 ? 'true' : 'false'
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

def drop(*members)
  members[1].times do
    members[0].shift
  end
  members[0]
end

list = [0,1,2,3,4,5,6,7,8,9,0] 
puts arr = drop(list, 3).inspect #=> expect [3,4,5,6,7,8,9,0]
list = [0,1,2,3,4,5,6,7,8,9,0]
puts arr = drop(list, 8).inspect #=> expect [8,9,0]


class Person
  def initialize name, surname
    @name, @surname = name, surname
  end

  def greet
    "Hello, #{@name} #{@surname}!"
  end
end

person = Person.new('Peter', 'Jackson')
puts person.greet
