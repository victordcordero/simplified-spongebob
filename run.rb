require 'pry'
require_relative 'models/boatingtest.rb'
require_relative 'models/instructor.rb'
require_relative 'models/student.rb'


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
eric = Student.new("Eric")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
sandy = Instructor.new("Sandy")

test1 = BoatingTest.new(spongebob, "101 boats", "passed", krabs)
test2 = BoatingTest.new(patrick, "101 driving", "pending", sandy)
test3 = BoatingTest.new(spongebob, "101 diving", "pending", krabs)
test4 = BoatingTest.new(spongebob, "101 flying", "passed", krabs)

# skrabs.all_tests

binding.pry
0
