require 'pry'

class Instructor

    attr_accessor :instructor_name

    @@all = []

    def initialize(instructor_name)
        @instructor_name = instructor_name
        @@all << self
    end

    def self.all
        @@all 
    end

def all_students
    BoatingTest.all.select{|test| test.instructor == self}
end
# * `Instructor#all_students` should return an array of students who took a boating test with this specific instructor. 

def passed_students
    BoatingTest.all.select{|test| test.test_status == "passed"}
end
# * `Instructor#passed_students` should return an array of students who passed a boating test with this specific instructor.

def passed_student(student, test_name)
    binding.pry
    BoatingTest.all.map(|student,test_name| student.student == student && test_name.test_name == test_name)
end


# `Instructor#pass_student` should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.


end