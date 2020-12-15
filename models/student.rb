class Student

    attr_accessor :student_name

    @@all = []

    def initialize(student_name)
        @student_name = student_name
        @@all << self
    end

    def self.all
        @@all 
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end
    # * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object). 

    def all_boating_tests
        BoatingTest.all.select{|test_inst| test_inst.student == self}
    end

    def all_instructors
        self.all_boating_tests.map(&:instructor)
    end
    # * `Student#all_instructors` should return an array of instructors with whom this specific student took a boating test.

    def self.find_student(first_name)
        binding.pry
        self.all.find{|student| student.student_name == first_name}
    end
    # `Student.find_student` will take in a first name and output the student (Object) with that name

  
    def grade_percentage
       tests = self.all_boating_tests.map{|test| test.test_status}.count
       passed_tests = self.all_boating_tests.select{|test| test.test_status == "passed"}.count
       grade_percentage = ( (passed_tests.to_f / tests.to_f) * 100).ceil
    end

    # total number of tests
    # total number of past tests
    # diving number of passed tests by number of tests
    # convert to percentage 
    #1. accessing all the tests that the student has taken
    # 2. calculate percentage that the student has passed
    # * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)
end